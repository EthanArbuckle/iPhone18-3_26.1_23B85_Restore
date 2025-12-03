@interface VUIDebugMetricsArrayViewController
- (VUIDebugMetricsArrayViewController)init;
- (id)object;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)generateCachedKeys;
- (void)setArray:(id)array;
- (void)setObject:(id)object;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation VUIDebugMetricsArrayViewController

- (VUIDebugMetricsArrayViewController)init
{
  v3.receiver = self;
  v3.super_class = VUIDebugMetricsArrayViewController;
  return [(VUIDebugMetricsArrayViewController *)&v3 initWithStyle:1];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = VUIDebugMetricsArrayViewController;
  [(VUIDebugMetricsArrayViewController *)&v5 viewDidLoad];
  tableView = [(VUIDebugMetricsArrayViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"cell"];

  tableView2 = [(VUIDebugMetricsArrayViewController *)self tableView];
  [tableView2 registerClass:objc_opt_class() forCellReuseIdentifier:@"detail"];
}

- (void)setArray:(id)array
{
  objc_storeStrong(&self->_array, array);
  [(VUIDebugMetricsArrayViewController *)self generateCachedKeys];
  tableView = [(VUIDebugMetricsArrayViewController *)self tableView];
  [tableView reloadData];
}

- (void)setObject:(id)object
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = object;
  v4 = MEMORY[0x1E695DEC8];
  objectCopy = object;
  v6 = [v4 arrayWithObjects:v8 count:1];
  array = self->_array;
  self->_array = v6;
}

- (id)object
{
  if ([(NSArray *)self->_array count]== 1)
  {
    v3 = [(NSArray *)self->_array objectAtIndexedSubscript:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_5;
    }
  }

  v3 = 0;
LABEL_5:

  return v3;
}

- (void)generateCachedKeys
{
  v10 = objc_opt_new();
  v3 = [(NSArray *)self->_array count];
  if (v3)
  {
    v4 = v3;
    for (i = 0; i != v4; ++i)
    {
      v6 = [(NSArray *)self->_array objectAtIndexedSubscript:i];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        allKeys = [v6 allKeys];
        v8 = [allKeys sortedArrayUsingSelector:sel_compare_];

        v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
        [v10 setObject:v8 forKeyedSubscript:v9];
      }
    }
  }

  [(VUIDebugMetricsArrayViewController *)self setCachedKeysOrder:v10];
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  v4 = [(NSArray *)self->_array objectAtIndexedSubscript:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSArray *)self->_array count];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(NSArray *)self->_array objectAtIndexedSubscript:section];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    allKeys = [v5 allKeys];
    v7 = [allKeys count];
  }

  else
  {
    v7 = [(NSArray *)self->_array count];
  }

  return v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = -[NSArray objectAtIndexedSubscript:](self->_array, "objectAtIndexedSubscript:", [pathCopy section]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    cachedKeysOrder = [(VUIDebugMetricsArrayViewController *)self cachedKeysOrder];
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(pathCopy, "section")}];
    v11 = [cachedKeysOrder objectForKeyedSubscript:v10];

    v12 = [v11 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
    v13 = [v8 objectForKeyedSubscript:v12];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v14 = [viewCopy dequeueReusableCellWithIdentifier:@"cell" forIndexPath:pathCopy];
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v12];
      textLabel = [v14 textLabel];
      [textLabel setText:v15];

      [v14 setAccessoryType:1];
    }

    else
    {
      v14 = [viewCopy dequeueReusableCellWithIdentifier:@"detail" forIndexPath:pathCopy];
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v12];
      textLabel2 = [v14 textLabel];
      [textLabel2 setText:v21];

      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v13];
      detailTextLabel = [v14 detailTextLabel];
      [detailTextLabel setText:v23];
    }
  }

  else
  {
    v14 = [viewCopy dequeueReusableCellWithIdentifier:@"cell" forIndexPath:pathCopy];
    v17 = MEMORY[0x1E696AEC0];
    v18 = -[NSArray objectAtIndexedSubscript:](self->_array, "objectAtIndexedSubscript:", [pathCopy row]);
    v19 = [v17 stringWithFormat:@"%@", v18];
    textLabel3 = [v14 textLabel];
    [textLabel3 setText:v19];

    [v14 setAccessoryType:0];
  }

  return v14;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = -[NSArray objectAtIndexedSubscript:](self->_array, "objectAtIndexedSubscript:", [pathCopy section]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    cachedKeysOrder = [(VUIDebugMetricsArrayViewController *)self cachedKeysOrder];
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(pathCopy, "section")}];
    v8 = [cachedKeysOrder objectForKeyedSubscript:v7];
    v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    v10 = [v5 objectForKeyedSubscript:v9];
    v11 = objc_alloc_init(VUIDebugMetricsArrayViewController);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(VUIDebugMetricsArrayViewController *)v11 setArray:v10];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_7:

        goto LABEL_8;
      }

      [(VUIDebugMetricsArrayViewController *)v11 setObject:v10];
    }

    navigationController = [(VUIDebugMetricsArrayViewController *)self navigationController];
    [navigationController pushViewController:v11 animated:1];

    goto LABEL_7;
  }

LABEL_8:
}

@end
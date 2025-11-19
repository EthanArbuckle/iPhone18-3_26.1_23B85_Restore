@interface VUIDebugMetricsImpressionViewController
- (VUIDebugMetricsImpressionViewController)init;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)object;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)setArray:(id)a3;
- (void)setObject:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation VUIDebugMetricsImpressionViewController

- (VUIDebugMetricsImpressionViewController)init
{
  v3.receiver = self;
  v3.super_class = VUIDebugMetricsImpressionViewController;
  return [(VUIDebugMetricsImpressionViewController *)&v3 initWithStyle:1];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = VUIDebugMetricsImpressionViewController;
  [(VUIDebugMetricsImpressionViewController *)&v6 viewDidLoad];
  v3 = [(VUIDebugMetricsImpressionViewController *)self tableView];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"cell"];

  v4 = [(VUIDebugMetricsImpressionViewController *)self tableView];
  [v4 registerClass:objc_opt_class() forCellReuseIdentifier:@"VUIDebugImpressionTableViewCellReuseIdentifier"];

  v5 = [(VUIDebugMetricsImpressionViewController *)self tableView];
  [v5 registerClass:objc_opt_class() forCellReuseIdentifier:@"detail"];
}

- (void)setArray:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [VUIDebugMetricsImpression alloc];
          v13 = [(VUIDebugMetricsImpression *)v12 initWithDictionary:v11, v16];
          [(NSArray *)v5 addObject:v13];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  array = self->_array;
  self->_array = v5;

  v15 = [(VUIDebugMetricsImpressionViewController *)self tableView];
  [v15 reloadData];
}

- (void)setObject:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
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

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(NSArray *)self->_array objectAtIndexedSubscript:a4];
  v5 = [v4 orderedOtherKeys];
  v6 = [v5 count];

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[NSArray objectAtIndexedSubscript:](self->_array, "objectAtIndexedSubscript:", [v7 section]);
  if ([v7 row])
  {
    v9 = [v8 orderedOtherKeys];
    v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v7, "row") - 1}];

    v11 = [v8 objectForKeyedSubscript:v10];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v12 = [v6 dequeueReusableCellWithIdentifier:@"cell" forIndexPath:v7];
      v13 = [v12 textLabel];
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v10];
      [v13 setText:v14];

      [v12 setAccessoryType:1];
    }

    else
    {
      v12 = [v6 dequeueReusableCellWithIdentifier:@"detail" forIndexPath:v7];
      v25 = [v12 textLabel];
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v10];
      [v25 setText:v26];

      v27 = [v12 detailTextLabel];
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v11];
      [v27 setText:v28];
    }

    [v12 layoutMargins];
    v30 = v29;
    [v12 layoutMargins];
    [v12 setLayoutMargins:{v30, 20.0}];
    goto LABEL_9;
  }

  v12 = [v6 dequeueReusableCellWithIdentifier:@"VUIDebugImpressionTableViewCellReuseIdentifier" forIndexPath:v7];
  v15 = [v8 name];
  [v12 setName:v15];

  v16 = [v8 type];
  [v12 setType:v16];

  v17 = [v8 identifier];
  [v12 setIdStr:v17];

  v18 = [v8 idType];
  [v12 setIdType:v18];

  v19 = [v8 impressionId];
  [v12 setImpressionId:v19];

  v20 = [v8 impressionIndex];
  [v12 setImpressionIndex:v20];

  v21 = [v8 parentId];

  if (v21)
  {
    v22 = [v8 parentId];
    v23 = [v22 integerValue];

    v10 = [(NSArray *)self->_array objectAtIndexedSubscript:v23 - 1];
    v24 = [v8 parentId];
    [v12 setImpressionParentId:v24];

    v11 = [v10 name];
    [v12 setImpressionParentName:v11];
LABEL_9:

    goto LABEL_10;
  }

  [v12 setImpressionParentId:@"none"];
  [v12 setImpressionParentName:&stru_1F5DB25C0];
LABEL_10:

  return v12;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v13 = a4;
  v5 = [v13 row];
  v6 = v13;
  if (v5)
  {
    v7 = -[NSArray objectAtIndexedSubscript:](self->_array, "objectAtIndexedSubscript:", [v13 section]);
    v8 = [v7 orderedOtherKeys];
    v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v13, "row") - 1}];

    v10 = [v7 objectForKeyedSubscript:v9];
    v11 = objc_alloc_init(VUIDebugMetricsArrayViewController);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(VUIDebugMetricsArrayViewController *)v11 setArray:v10];
      v12 = [(VUIDebugMetricsImpressionViewController *)self navigationController];
      [v12 pushViewController:v11 animated:1];
    }

    v6 = v13;
  }
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v4 = [a4 row];
  result = 44.0;
  if (!v4)
  {
    return 176.0;
  }

  return result;
}

@end
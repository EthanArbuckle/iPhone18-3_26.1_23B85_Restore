@interface VUIDebugMetricsImpressionViewController
- (VUIDebugMetricsImpressionViewController)init;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)object;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)setArray:(id)array;
- (void)setObject:(id)object;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
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
  tableView = [(VUIDebugMetricsImpressionViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"cell"];

  tableView2 = [(VUIDebugMetricsImpressionViewController *)self tableView];
  [tableView2 registerClass:objc_opt_class() forCellReuseIdentifier:@"VUIDebugImpressionTableViewCellReuseIdentifier"];

  tableView3 = [(VUIDebugMetricsImpressionViewController *)self tableView];
  [tableView3 registerClass:objc_opt_class() forCellReuseIdentifier:@"detail"];
}

- (void)setArray:(id)array
{
  v21 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = arrayCopy;
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

  tableView = [(VUIDebugMetricsImpressionViewController *)self tableView];
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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(NSArray *)self->_array objectAtIndexedSubscript:section];
  orderedOtherKeys = [v4 orderedOtherKeys];
  v6 = [orderedOtherKeys count];

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = -[NSArray objectAtIndexedSubscript:](self->_array, "objectAtIndexedSubscript:", [pathCopy section]);
  if ([pathCopy row])
  {
    orderedOtherKeys = [v8 orderedOtherKeys];
    v10 = [orderedOtherKeys objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row") - 1}];

    name2 = [v8 objectForKeyedSubscript:v10];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v12 = [viewCopy dequeueReusableCellWithIdentifier:@"cell" forIndexPath:pathCopy];
      textLabel = [v12 textLabel];
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v10];
      [textLabel setText:v14];

      [v12 setAccessoryType:1];
    }

    else
    {
      v12 = [viewCopy dequeueReusableCellWithIdentifier:@"detail" forIndexPath:pathCopy];
      textLabel2 = [v12 textLabel];
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v10];
      [textLabel2 setText:v26];

      detailTextLabel = [v12 detailTextLabel];
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", name2];
      [detailTextLabel setText:v28];
    }

    [v12 layoutMargins];
    v30 = v29;
    [v12 layoutMargins];
    [v12 setLayoutMargins:{v30, 20.0}];
    goto LABEL_9;
  }

  v12 = [viewCopy dequeueReusableCellWithIdentifier:@"VUIDebugImpressionTableViewCellReuseIdentifier" forIndexPath:pathCopy];
  name = [v8 name];
  [v12 setName:name];

  type = [v8 type];
  [v12 setType:type];

  identifier = [v8 identifier];
  [v12 setIdStr:identifier];

  idType = [v8 idType];
  [v12 setIdType:idType];

  impressionId = [v8 impressionId];
  [v12 setImpressionId:impressionId];

  impressionIndex = [v8 impressionIndex];
  [v12 setImpressionIndex:impressionIndex];

  parentId = [v8 parentId];

  if (parentId)
  {
    parentId2 = [v8 parentId];
    integerValue = [parentId2 integerValue];

    v10 = [(NSArray *)self->_array objectAtIndexedSubscript:integerValue - 1];
    parentId3 = [v8 parentId];
    [v12 setImpressionParentId:parentId3];

    name2 = [v10 name];
    [v12 setImpressionParentName:name2];
LABEL_9:

    goto LABEL_10;
  }

  [v12 setImpressionParentId:@"none"];
  [v12 setImpressionParentName:&stru_1F5DB25C0];
LABEL_10:

  return v12;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [pathCopy row];
  v6 = pathCopy;
  if (v5)
  {
    v7 = -[NSArray objectAtIndexedSubscript:](self->_array, "objectAtIndexedSubscript:", [pathCopy section]);
    orderedOtherKeys = [v7 orderedOtherKeys];
    v9 = [orderedOtherKeys objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row") - 1}];

    v10 = [v7 objectForKeyedSubscript:v9];
    v11 = objc_alloc_init(VUIDebugMetricsArrayViewController);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(VUIDebugMetricsArrayViewController *)v11 setArray:v10];
      navigationController = [(VUIDebugMetricsImpressionViewController *)self navigationController];
      [navigationController pushViewController:v11 animated:1];
    }

    v6 = pathCopy;
  }
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  v4 = [path row];
  result = 44.0;
  if (!v4)
  {
    return 176.0;
  }

  return result;
}

@end
@interface VUIDebugMetricsDictionaryViewController
- (VUIDebugMetricsDictionaryViewController)initWithDictionary:(id)dictionary;
- (id)sortedKeys;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation VUIDebugMetricsDictionaryViewController

- (VUIDebugMetricsDictionaryViewController)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = VUIDebugMetricsDictionaryViewController;
  v6 = [(VUIDebugMetricsDictionaryViewController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dictionary, dictionary);
    tableView = [(VUIDebugMetricsDictionaryViewController *)v7 tableView];
    [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"cell"];
  }

  return v7;
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = VUIDebugMetricsDictionaryViewController;
  [(VUIDebugMetricsDictionaryViewController *)&v2 viewDidLoad];
}

- (id)sortedKeys
{
  allKeys = [(NSDictionary *)self->_dictionary allKeys];
  v3 = [allKeys sortedArrayUsingSelector:sel_compare_];

  return v3;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"cell" forIndexPath:pathCopy];
  sortedKeys = [(VUIDebugMetricsDictionaryViewController *)self sortedKeys];
  v9 = [pathCopy row];

  v10 = [sortedKeys objectAtIndexedSubscript:v9];

  textLabel = [v7 textLabel];
  [textLabel setText:v10];

  v12 = MEMORY[0x1E696AEC0];
  dictionary = [(VUIDebugMetricsDictionaryViewController *)self dictionary];
  v14 = [dictionary objectForKeyedSubscript:v10];
  v15 = [v12 stringWithFormat:@"%@", v14];
  detailTextLabel = [v7 detailTextLabel];
  [detailTextLabel setText:v15];

  return v7;
}

@end
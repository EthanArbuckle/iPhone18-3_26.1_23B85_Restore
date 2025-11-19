@interface VUIDebugMetricsDictionaryViewController
- (VUIDebugMetricsDictionaryViewController)initWithDictionary:(id)a3;
- (id)sortedKeys;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation VUIDebugMetricsDictionaryViewController

- (VUIDebugMetricsDictionaryViewController)initWithDictionary:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = VUIDebugMetricsDictionaryViewController;
  v6 = [(VUIDebugMetricsDictionaryViewController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dictionary, a3);
    v8 = [(VUIDebugMetricsDictionaryViewController *)v7 tableView];
    [v8 registerClass:objc_opt_class() forCellReuseIdentifier:@"cell"];
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
  v2 = [(NSDictionary *)self->_dictionary allKeys];
  v3 = [v2 sortedArrayUsingSelector:sel_compare_];

  return v3;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"cell" forIndexPath:v6];
  v8 = [(VUIDebugMetricsDictionaryViewController *)self sortedKeys];
  v9 = [v6 row];

  v10 = [v8 objectAtIndexedSubscript:v9];

  v11 = [v7 textLabel];
  [v11 setText:v10];

  v12 = MEMORY[0x1E696AEC0];
  v13 = [(VUIDebugMetricsDictionaryViewController *)self dictionary];
  v14 = [v13 objectForKeyedSubscript:v10];
  v15 = [v12 stringWithFormat:@"%@", v14];
  v16 = [v7 detailTextLabel];
  [v16 setText:v15];

  return v7;
}

@end
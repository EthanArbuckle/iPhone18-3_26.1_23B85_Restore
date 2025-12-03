@interface VMFreqMap
+ (id)adjustVMFreqMapVersion:(id)version;
+ (id)getVMFreqMapFilePath;
+ (id)loadVMFreqMap;
- (VMFreqMap)initWithCoder:(id)coder;
- (VMFreqMap)initWithVersion:(int)version;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VMFreqMap

- (VMFreqMap)initWithVersion:(int)version
{
  v11.receiver = self;
  v11.super_class = VMFreqMap;
  v4 = [(VMFreqMap *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_version = version;
    v6 = objc_alloc_init(NSMutableDictionary);
    modelMap = v5->_modelMap;
    v5->_modelMap = v6;

    v8 = +[NSDate date];
    [v8 timeIntervalSince1970];
    v5->_createdTimeStamp = v9;

    v5->_modifiedTimeStamp = 0.0;
  }

  return v5;
}

- (id)description
{
  version = [(VMFreqMap *)self version];
  [(VMFreqMap *)self createdTimeStamp];
  v4 = [NSDate dateWithTimeIntervalSince1970:?];
  [(VMFreqMap *)self modifiedTimeStamp];
  v5 = [NSDate dateWithTimeIntervalSince1970:?];
  modelMap = [(VMFreqMap *)self modelMap];
  v7 = [NSString stringWithFormat:@" v%d created:%@, modified:%@, %@", version, v4, v5, modelMap];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  version = self->_version;
  coderCopy = coder;
  v6 = NSStringFromSelector("version");
  [coderCopy encodeInt:version forKey:v6];

  modelMap = self->_modelMap;
  v8 = NSStringFromSelector("modelMap");
  [coderCopy encodeObject:modelMap forKey:v8];

  createdTimeStamp = self->_createdTimeStamp;
  v10 = NSStringFromSelector("createdTimeStamp");
  [coderCopy encodeDouble:v10 forKey:createdTimeStamp];

  modifiedTimeStamp = self->_modifiedTimeStamp;
  v12 = NSStringFromSelector("modifiedTimeStamp");
  [coderCopy encodeDouble:v12 forKey:modifiedTimeStamp];
}

- (VMFreqMap)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = VMFreqMap;
  v5 = [(VMFreqMap *)&v18 init];
  if (v5)
  {
    v6 = NSStringFromSelector("version");
    v5->_version = [coderCopy decodeIntForKey:v6];

    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v7, v8, objc_opt_class(), 0];
    v10 = NSStringFromSelector("modelMap");
    v11 = [coderCopy decodeObjectOfClasses:v9 forKey:v10];
    modelMap = v5->_modelMap;
    v5->_modelMap = v11;

    v13 = NSStringFromSelector("createdTimeStamp");
    [coderCopy decodeDoubleForKey:v13];
    v5->_createdTimeStamp = v14;

    v15 = NSStringFromSelector("modifiedTimeStamp");
    [coderCopy decodeDoubleForKey:v15];
    v5->_modifiedTimeStamp = v16;
  }

  return v5;
}

+ (id)adjustVMFreqMapVersion:(id)version
{
  versionCopy = version;
  if ([versionCopy version])
  {
    v4 = [[VMFreqMap alloc] initWithVersion:0];
  }

  else
  {
    v4 = versionCopy;
  }

  v5 = v4;

  return v5;
}

+ (id)getVMFreqMapFilePath
{
  v2 = sub_10008546C();
  v3 = [v2 URLByAppendingPathComponent:@"vmLanguageFrequencyMap"];
  path = [v3 path];

  return path;
}

+ (id)loadVMFreqMap
{
  v2 = +[VMFreqMap getVMFreqMapFilePath];
  v3 = [NSSet setWithObjects:objc_opt_class(), 0];
  v4 = [VMUtilities readDataFromFile:v2 customClassSet:v3];

  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = sub_100002740();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Loaded VM Context Freq Map %@", buf, 0xCu);
    }

    v6 = [VMFreqMap adjustVMFreqMapVersion:v4];
  }

  else
  {
    v7 = sub_100002740();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Intializing VM Context Freq Map as does not exist.", buf, 2u);
    }

    v6 = [[VMFreqMap alloc] initWithVersion:0];
  }

  v8 = v6;

  return v8;
}

@end
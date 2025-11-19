@interface BAAppExtensionInfo
- (BAAppExtensionInfo)init;
- (BAAppExtensionInfo)initWithCoder:(id)a3;
- (id)initPrivately;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BAAppExtensionInfo

- (BAAppExtensionInfo)init
{
  result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT);
  if (result)
  {
    v3 = 136315138;
    v4 = "BAAppExtensionInfo cannot be constructed using -init.";
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "BUG IN CLIENT OF BackgroundAssets: %s", &v3, 0xCu);
  }

  qword_100089A98 = "BUG IN CLIENT OF BackgroundAssets: BAAppExtensionInfo cannot be constructed using -init.";
  __break(0xB001u);
  return result;
}

- (id)initPrivately
{
  v7.receiver = self;
  v7.super_class = BAAppExtensionInfo;
  v2 = [(BAAppExtensionInfo *)&v7 init];
  v3 = v2;
  if (v2)
  {
    restrictedDownloadSizeRemaining = v2->_restrictedDownloadSizeRemaining;
    v2->_restrictedDownloadSizeRemaining = 0;

    restrictedEssentialDownloadSizeRemaining = v3->_restrictedEssentialDownloadSizeRemaining;
    v3->_restrictedEssentialDownloadSizeRemaining = 0;
  }

  return v3;
}

- (BAAppExtensionInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BAAppExtensionInfo *)self initPrivately];
  if (v5)
  {
    if ([v4 containsValueForKey:@"restrictedDownloadSizeRemaining"])
    {
      v6 = [NSSet setWithObjects:objc_opt_class(), 0];
      v7 = [v4 decodeObjectOfClasses:v6 forKey:@"restrictedDownloadSizeRemaining"];
      restrictedDownloadSizeRemaining = v5->_restrictedDownloadSizeRemaining;
      v5->_restrictedDownloadSizeRemaining = v7;
    }

    if ([v4 containsValueForKey:@"restrictedEssentialDownloadSizeRemaining"])
    {
      v9 = [NSSet setWithObjects:objc_opt_class(), 0];
      v10 = [v4 decodeObjectOfClasses:v9 forKey:@"restrictedEssentialDownloadSizeRemaining"];
      restrictedEssentialDownloadSizeRemaining = v5->_restrictedEssentialDownloadSizeRemaining;
      v5->_restrictedEssentialDownloadSizeRemaining = v10;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(BAAppExtensionInfo *)self restrictedDownloadSizeRemaining];

  if (v4)
  {
    v5 = [(BAAppExtensionInfo *)self restrictedDownloadSizeRemaining];
    [v8 encodeObject:v5 forKey:@"restrictedDownloadSizeRemaining"];
  }

  v6 = [(BAAppExtensionInfo *)self restrictedEssentialDownloadSizeRemaining];

  if (v6)
  {
    v7 = [(BAAppExtensionInfo *)self restrictedEssentialDownloadSizeRemaining];
    [v8 encodeObject:v7 forKey:@"restrictedEssentialDownloadSizeRemaining"];
  }
}

@end
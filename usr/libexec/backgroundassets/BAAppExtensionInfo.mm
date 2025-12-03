@interface BAAppExtensionInfo
- (BAAppExtensionInfo)init;
- (BAAppExtensionInfo)initWithCoder:(id)coder;
- (id)initPrivately;
- (void)encodeWithCoder:(id)coder;
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

- (BAAppExtensionInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  initPrivately = [(BAAppExtensionInfo *)self initPrivately];
  if (initPrivately)
  {
    if ([coderCopy containsValueForKey:@"restrictedDownloadSizeRemaining"])
    {
      v6 = [NSSet setWithObjects:objc_opt_class(), 0];
      v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"restrictedDownloadSizeRemaining"];
      restrictedDownloadSizeRemaining = initPrivately->_restrictedDownloadSizeRemaining;
      initPrivately->_restrictedDownloadSizeRemaining = v7;
    }

    if ([coderCopy containsValueForKey:@"restrictedEssentialDownloadSizeRemaining"])
    {
      v9 = [NSSet setWithObjects:objc_opt_class(), 0];
      v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"restrictedEssentialDownloadSizeRemaining"];
      restrictedEssentialDownloadSizeRemaining = initPrivately->_restrictedEssentialDownloadSizeRemaining;
      initPrivately->_restrictedEssentialDownloadSizeRemaining = v10;
    }
  }

  return initPrivately;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  restrictedDownloadSizeRemaining = [(BAAppExtensionInfo *)self restrictedDownloadSizeRemaining];

  if (restrictedDownloadSizeRemaining)
  {
    restrictedDownloadSizeRemaining2 = [(BAAppExtensionInfo *)self restrictedDownloadSizeRemaining];
    [coderCopy encodeObject:restrictedDownloadSizeRemaining2 forKey:@"restrictedDownloadSizeRemaining"];
  }

  restrictedEssentialDownloadSizeRemaining = [(BAAppExtensionInfo *)self restrictedEssentialDownloadSizeRemaining];

  if (restrictedEssentialDownloadSizeRemaining)
  {
    restrictedEssentialDownloadSizeRemaining2 = [(BAAppExtensionInfo *)self restrictedEssentialDownloadSizeRemaining];
    [coderCopy encodeObject:restrictedEssentialDownloadSizeRemaining2 forKey:@"restrictedEssentialDownloadSizeRemaining"];
  }
}

@end
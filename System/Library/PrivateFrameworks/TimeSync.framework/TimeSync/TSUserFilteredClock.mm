@interface TSUserFilteredClock
+ (id)diagnosticDescriptionForInfo:(id)info withIndent:(id)indent;
- (BOOL)waitTimeSyncTimeUpdate;
- (TSUserFilteredClock)initWithImplDC:(id)c;
@end

@implementation TSUserFilteredClock

- (TSUserFilteredClock)initWithImplDC:(id)c
{
  cCopy = c;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(TSUserFilteredClock *)self initWithImplDC:&v11];
    impl = v10;
    v5 = v11;
    goto LABEL_4;
  }

  v9.receiver = self;
  v9.super_class = TSUserFilteredClock;
  v5 = [(TSKernelClock *)&v9 initWithImplDC:cCopy];
  if (v5)
  {
    v6 = cCopy;
    impl = v5->_impl;
    v5->_impl = v6;
LABEL_4:
  }

  return v5;
}

- (BOOL)waitTimeSyncTimeUpdate
{
  impl = self->_impl;
  if (impl)
  {
    LOBYTE(impl) = [(TSDCUserFilteredClock *)impl waitTimeSyncTimeUpdate];
  }

  return impl;
}

+ (id)diagnosticDescriptionForInfo:(id)info withIndent:(id)indent
{
  infoCopy = info;
  indentCopy = indent;
  v17.receiver = self;
  v17.super_class = &OBJC_METACLASS___TSUserFilteredClock;
  v8 = objc_msgSendSuper2(&v17, sel_diagnosticDescriptionForInfo_withIndent_, infoCopy, indentCopy);
  [v8 appendFormat:@"%@    Nominal Mach Interval: ", indentCopy];
  v9 = [infoCopy objectForKeyedSubscript:@"NominalMachInterval"];
  v10 = v9;
  if (v9)
  {
    [v8 appendFormat:@"%llu\n", objc_msgSend(v9, "unsignedLongLongValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Nominal Domain Interval: ", indentCopy];
  v11 = [infoCopy objectForKeyedSubscript:@"NominalDomainInterval"];

  if (v11)
  {
    [v8 appendFormat:@"%llu\n", objc_msgSend(v11, "unsignedLongLongValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Filter Shift: ", indentCopy];
  v12 = [infoCopy objectForKeyedSubscript:@"FilterShift"];

  if (v12)
  {
    [v8 appendFormat:@"%hu\n", objc_msgSend(v12, "unsignedShortValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Adaptive: ", indentCopy];
  v13 = [infoCopy objectForKeyedSubscript:@"Adaptive"];

  if (v13)
  {
    bOOLValue = [v13 BOOLValue];
    v15 = @"NO";
    if (bOOLValue)
    {
      v15 = @"YES";
    }

    [v8 appendFormat:@"%@\n", v15];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  return v8;
}

- (void)initWithImplDC:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136316418;
    v8 = "[kernelClock isKindOfClass:[TSDCUserFilteredClock class]]";
    v9 = 2048;
    v10 = 0;
    v11 = 2048;
    v12 = 0;
    v13 = 2080;
    v14 = "";
    v15 = 2080;
    v16 = "/Library/Caches/com.apple.xbs/Sources/TimeSync/TimeSync/API/TSUserFilteredClock.m";
    v17 = 1024;
    v18 = 47;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", &v7, 0x3Au);
  }

  *a3 = 0;
  *a2 = a1;
  v6 = *MEMORY[0x277D85DE8];
}

@end
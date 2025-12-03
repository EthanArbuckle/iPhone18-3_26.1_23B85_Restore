@interface UIResponder(SKUIExtensions)
- (uint64_t)_SKUIView;
@end

@implementation UIResponder(SKUIExtensions)

- (uint64_t)_SKUIView
{
  v23 = *MEMORY[0x277D85DE8];
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(UIResponder(SKUIExtensions) *)v4 _SKUIView:v5];
      }
    }
  }

  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    v14 = shouldLog | 2;
  }

  else
  {
    v14 = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v14 &= 2u;
  }

  if (!v14)
  {
    goto LABEL_13;
  }

  NSStringFromSelector(a2);
  v19 = 138412546;
  selfCopy = self;
  v22 = v21 = 2112;
  LODWORD(v18) = 22;
  v16 = _os_log_send_and_compose_impl();

  if (v16)
  {
    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v16 encoding:{4, &v19, v18}];
    free(v16);
    SSFileLog();
LABEL_13:
  }

  return 0;
}

@end
@interface EMTResult(MetaInfo)
- (double)score;
- (void)score;
@end

@implementation EMTResult(MetaInfo)

- (double)score
{
  metaInfo = [self metaInfo];
  v2 = metaInfo;
  if (metaInfo)
  {
    v3 = [metaInfo dataUsingEncoding:4];
    v11 = 0;
    v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v3 options:0 error:&v11];
    v5 = v11;
    if (v4)
    {
      v6 = [v4 objectForKey:@"norm_cost"];
      if (v6)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = v6;
          [v7 doubleValue];
          v9 = v8 * -0.434294482;
        }

        else
        {
          v7 = _nlpDefaultLog();
          v9 = -15.6535598;
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            [(EMTResult(MetaInfo) *)v6 score];
          }
        }
      }

      else
      {
        v7 = _nlpDefaultLog();
        v9 = -15.6535598;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [(EMTResult(MetaInfo) *)v4 score];
        }
      }
    }

    else
    {
      v6 = _nlpDefaultLog();
      v9 = -15.6535598;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(EMTResult(MetaInfo) *)v3 score];
      }
    }
  }

  else
  {
    v3 = _nlpDefaultLog();
    v9 = -15.6535598;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(EMTResult(MetaInfo) *)v3 score];
    }
  }

  return v9;
}

- (void)score
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  selfCopy = self;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_26F4DB000, log, OS_LOG_TYPE_ERROR, "Failed to get seq2seq score, unable to decode json encoded meta info dictionary %@:%@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end
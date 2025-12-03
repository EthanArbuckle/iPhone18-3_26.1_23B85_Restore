@interface _MLRemoteCoreMLErrors
+ (id)clientTimeoutErrorForMethod:(id)method;
+ (id)createErrorWithCode:(int64_t)code description:(id)description;
@end

@implementation _MLRemoteCoreMLErrors

+ (id)createErrorWithCode:(int64_t)code description:(id)description
{
  v17[1] = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  v6 = MEMORY[0x277CCA9B8];
  v16 = *MEMORY[0x277CCA450];
  v17[0] = descriptionCopy;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v8 = [v6 errorWithDomain:@"com.apple.remoteCoreML" code:code userInfo:v7];

  v9 = +[_MLLog common];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v12 = 138412546;
    v13 = descriptionCopy;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_261D92000, v9, OS_LOG_TYPE_INFO, "%@ : %@", &v12, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)clientTimeoutErrorForMethod:(id)method
{
  method = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: Client call timeout.", method];
  v5 = [self createErrorWithCode:0 description:method];

  return v5;
}

@end
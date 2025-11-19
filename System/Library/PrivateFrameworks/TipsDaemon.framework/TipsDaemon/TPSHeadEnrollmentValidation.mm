@interface TPSHeadEnrollmentValidation
- (void)validateWithCompletion:(id)a3;
@end

@implementation TPSHeadEnrollmentValidation

- (void)validateWithCompletion:(id)a3
{
  v4 = MEMORY[0x277D71778];
  v5 = a3;
  v6 = [v4 targeting];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(TPSHeadEnrollmentValidation *)self validateWithCompletion:v6];
  }

  (*(v5 + 2))(v5, 0, 0);
}

- (void)validateWithCompletion:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [a1 name];
  v5 = [a1 targetContext];
  v7 = 138413058;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  v11 = 1024;
  v12 = 0;
  v13 = 2112;
  v14 = 0;
  _os_log_debug_impl(&dword_232D6F000, a2, OS_LOG_TYPE_DEBUG, "%@ - targetContext: %@. Valid: %d. Error: %@", &v7, 0x26u);

  v6 = *MEMORY[0x277D85DE8];
}

@end
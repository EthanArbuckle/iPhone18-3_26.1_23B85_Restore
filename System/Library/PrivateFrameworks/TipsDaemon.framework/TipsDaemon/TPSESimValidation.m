@interface TPSESimValidation
- (void)validateWithCompletion:(id)a3;
@end

@implementation TPSESimValidation

- (void)validateWithCompletion:(id)a3
{
  v4 = MEMORY[0x277CF96D8];
  v5 = a3;
  v6 = [v4 sharedManager];
  v7 = v6;
  if (v6)
  {
    (*(v5 + 2))(v5, ([v6 getSupportedFlowTypes] == 0) ^ -[TPSTargetingValidation BOOLValue](self, "BOOLValue"), 0);
    v8 = v5;
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:2 userInfo:0];
    v9 = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(TPSESimValidation *)self validateWithCompletion:v9];
    }

    (*(v5 + 2))(v5, 0, v8);
  }
}

- (void)validateWithCompletion:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 name];
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_232D6F000, a2, OS_LOG_TYPE_DEBUG, "%@ - error initializing cellular plan manager", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end
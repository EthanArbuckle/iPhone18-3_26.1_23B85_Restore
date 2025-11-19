@interface SNTestCoordinator
- (BOOL)requiresRotationForOrientation:(int64_t)a3;
- (NSString)launchTestName;
- (SNTestCoordinator)initWithApplication:(id)a3;
- (int64_t)lengthForNumberOfScreens:(int64_t)a3 direction:(unint64_t)a4 size:(CGSize)a5;
- (unint64_t)axisForDirection:(unint64_t)a3;
- (void)failedTestWithTestName:(id)a3 failureMessage:(id)a4;
- (void)recapScrollTestWithTestName:(id)a3 scrollView:(id)a4;
- (void)rotateToOrientation:(int64_t)a3 beforeRotation:(id)a4 afterRotation:(id)a5;
- (void)scrollTestWithTestName:(id)a3 scrollView:(id)a4 iterations:(int64_t)a5 offset:(int64_t)a6 direction:(unint64_t)a7;
- (void)scrollTestWithTestName:(id)a3 scrollView:(id)a4 iterations:(int64_t)a5 offset:(int64_t)a6 numberOfScreens:(int64_t)a7 direction:(unint64_t)a8;
- (void)startedTestWithTestName:(id)a3;
@end

@implementation SNTestCoordinator

- (NSString)launchTestName
{
  v2 = [(SNTestCoordinator *)self application];
  v3 = [v2 _launchTestName];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"launch";
  }

  v6 = v5;

  return &v5->isa;
}

- (SNTestCoordinator)initWithApplication:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = SNDefaultLog;
  if (os_log_type_enabled(SNDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v5;
    _os_log_impl(&dword_26D1A2000, v6, OS_LOG_TYPE_DEFAULT, "Creating SNTestCoordinator with application %@", buf, 0xCu);
  }

  v11.receiver = self;
  v11.super_class = SNTestCoordinator;
  v7 = [(SNTestCoordinator *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_application, a3);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)startedTestWithTestName:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SNDefaultLog;
  if (os_log_type_enabled(SNDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(SNTestCoordinator *)self application];
    v10 = 138412546;
    v11 = v4;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_26D1A2000, v6, OS_LOG_TYPE_DEFAULT, "Marking test %@ started on application %@", &v10, 0x16u);
  }

  v8 = [(SNTestCoordinator *)self application];
  [v8 startedTest:v4];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)failedTestWithTestName:(id)a3 failureMessage:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = SNDefaultLog;
  if (os_log_type_enabled(SNDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [(SNTestCoordinator *)self application];
    v13 = 138412802;
    v14 = v6;
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_26D1A2000, v9, OS_LOG_TYPE_DEFAULT, "Marking test %@ failed on application %@ with error %@", &v13, 0x20u);
  }

  v11 = [(SNTestCoordinator *)self application];
  [v11 failedTest:v6 withFailure:v7];

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)requiresRotationForOrientation:(int64_t)a3
{
  v4 = [(SNTestCoordinator *)self application];
  LOBYTE(a3) = [v4 statusBarOrientation] != a3;

  return a3;
}

- (void)rotateToOrientation:(int64_t)a3 beforeRotation:(id)a4 afterRotation:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(SNTestCoordinator *)self application];
  v14 = v9;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __70__SNTestCoordinator_rotateToOrientation_beforeRotation_afterRotation___block_invoke;
  v15[3] = &unk_279D942C0;
  v16 = v8;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__SNTestCoordinator_rotateToOrientation_beforeRotation_afterRotation___block_invoke_2;
  v13[3] = &unk_279D942C0;
  v11 = v9;
  v12 = v8;
  [v10 rotateIfNeeded:a3 before:v15 after:v13];
}

uint64_t __70__SNTestCoordinator_rotateToOrientation_beforeRotation_afterRotation___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __70__SNTestCoordinator_rotateToOrientation_beforeRotation_afterRotation___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)scrollTestWithTestName:(id)a3 scrollView:(id)a4 iterations:(int64_t)a5 offset:(int64_t)a6 direction:(unint64_t)a7
{
  v12 = a4;
  v13 = a3;
  [v12 _performScrollTest:v13 iterations:a5 delta:a6 scrollAxis:{-[SNTestCoordinator axisForDirection:](self, "axisForDirection:", a7)}];
}

- (void)scrollTestWithTestName:(id)a3 scrollView:(id)a4 iterations:(int64_t)a5 offset:(int64_t)a6 numberOfScreens:(int64_t)a7 direction:(unint64_t)a8
{
  v14 = a4;
  v18 = a3;
  v15 = [(SNTestCoordinator *)self axisForDirection:a8];
  [v14 bounds];
  [v14 _performScrollTest:v18 iterations:a5 delta:a6 length:-[SNTestCoordinator lengthForNumberOfScreens:direction:size:](self scrollAxis:{"lengthForNumberOfScreens:direction:size:", a7, a8, v16, v17), v15}];
}

- (void)recapScrollTestWithTestName:(id)a3 scrollView:(id)a4
{
  v5 = MEMORY[0x277D44360];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithTestName:v7 scrollView:v6 completionHandler:0];

  [MEMORY[0x277D44368] runTestWithParameters:v8];
}

- (unint64_t)axisForDirection:(unint64_t)a3
{
  if (a3)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (int64_t)lengthForNumberOfScreens:(int64_t)a3 direction:(unint64_t)a4 size:(CGSize)a5
{
  if (a4 == 1)
  {
    width = a5.width;
  }

  else
  {
    if (a4)
    {
      return self;
    }

    width = a5.height;
  }

  return width * a3;
}

@end
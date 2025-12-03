@interface SNTestCoordinator
- (BOOL)requiresRotationForOrientation:(int64_t)orientation;
- (NSString)launchTestName;
- (SNTestCoordinator)initWithApplication:(id)application;
- (int64_t)lengthForNumberOfScreens:(int64_t)screens direction:(unint64_t)direction size:(CGSize)size;
- (unint64_t)axisForDirection:(unint64_t)direction;
- (void)failedTestWithTestName:(id)name failureMessage:(id)message;
- (void)recapScrollTestWithTestName:(id)name scrollView:(id)view;
- (void)rotateToOrientation:(int64_t)orientation beforeRotation:(id)rotation afterRotation:(id)afterRotation;
- (void)scrollTestWithTestName:(id)name scrollView:(id)view iterations:(int64_t)iterations offset:(int64_t)offset direction:(unint64_t)direction;
- (void)scrollTestWithTestName:(id)name scrollView:(id)view iterations:(int64_t)iterations offset:(int64_t)offset numberOfScreens:(int64_t)screens direction:(unint64_t)direction;
- (void)startedTestWithTestName:(id)name;
@end

@implementation SNTestCoordinator

- (NSString)launchTestName
{
  application = [(SNTestCoordinator *)self application];
  _launchTestName = [application _launchTestName];
  v4 = _launchTestName;
  if (_launchTestName)
  {
    v5 = _launchTestName;
  }

  else
  {
    v5 = @"launch";
  }

  v6 = v5;

  return &v5->isa;
}

- (SNTestCoordinator)initWithApplication:(id)application
{
  v14 = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  v6 = SNDefaultLog;
  if (os_log_type_enabled(SNDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = applicationCopy;
    _os_log_impl(&dword_26D1A2000, v6, OS_LOG_TYPE_DEFAULT, "Creating SNTestCoordinator with application %@", buf, 0xCu);
  }

  v11.receiver = self;
  v11.super_class = SNTestCoordinator;
  v7 = [(SNTestCoordinator *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_application, application);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)startedTestWithTestName:(id)name
{
  v14 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = SNDefaultLog;
  if (os_log_type_enabled(SNDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    application = [(SNTestCoordinator *)self application];
    v10 = 138412546;
    v11 = nameCopy;
    v12 = 2112;
    v13 = application;
    _os_log_impl(&dword_26D1A2000, v6, OS_LOG_TYPE_DEFAULT, "Marking test %@ started on application %@", &v10, 0x16u);
  }

  application2 = [(SNTestCoordinator *)self application];
  [application2 startedTest:nameCopy];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)failedTestWithTestName:(id)name failureMessage:(id)message
{
  v19 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  messageCopy = message;
  v8 = SNDefaultLog;
  if (os_log_type_enabled(SNDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    application = [(SNTestCoordinator *)self application];
    v13 = 138412802;
    v14 = nameCopy;
    v15 = 2112;
    v16 = application;
    v17 = 2112;
    v18 = messageCopy;
    _os_log_impl(&dword_26D1A2000, v9, OS_LOG_TYPE_DEFAULT, "Marking test %@ failed on application %@ with error %@", &v13, 0x20u);
  }

  application2 = [(SNTestCoordinator *)self application];
  [application2 failedTest:nameCopy withFailure:messageCopy];

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)requiresRotationForOrientation:(int64_t)orientation
{
  application = [(SNTestCoordinator *)self application];
  LOBYTE(orientation) = [application statusBarOrientation] != orientation;

  return orientation;
}

- (void)rotateToOrientation:(int64_t)orientation beforeRotation:(id)rotation afterRotation:(id)afterRotation
{
  rotationCopy = rotation;
  afterRotationCopy = afterRotation;
  application = [(SNTestCoordinator *)self application];
  v14 = afterRotationCopy;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __70__SNTestCoordinator_rotateToOrientation_beforeRotation_afterRotation___block_invoke;
  v15[3] = &unk_279D942C0;
  v16 = rotationCopy;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__SNTestCoordinator_rotateToOrientation_beforeRotation_afterRotation___block_invoke_2;
  v13[3] = &unk_279D942C0;
  v11 = afterRotationCopy;
  v12 = rotationCopy;
  [application rotateIfNeeded:orientation before:v15 after:v13];
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

- (void)scrollTestWithTestName:(id)name scrollView:(id)view iterations:(int64_t)iterations offset:(int64_t)offset direction:(unint64_t)direction
{
  viewCopy = view;
  nameCopy = name;
  [viewCopy _performScrollTest:nameCopy iterations:iterations delta:offset scrollAxis:{-[SNTestCoordinator axisForDirection:](self, "axisForDirection:", direction)}];
}

- (void)scrollTestWithTestName:(id)name scrollView:(id)view iterations:(int64_t)iterations offset:(int64_t)offset numberOfScreens:(int64_t)screens direction:(unint64_t)direction
{
  viewCopy = view;
  nameCopy = name;
  v15 = [(SNTestCoordinator *)self axisForDirection:direction];
  [viewCopy bounds];
  [viewCopy _performScrollTest:nameCopy iterations:iterations delta:offset length:-[SNTestCoordinator lengthForNumberOfScreens:direction:size:](self scrollAxis:{"lengthForNumberOfScreens:direction:size:", screens, direction, v16, v17), v15}];
}

- (void)recapScrollTestWithTestName:(id)name scrollView:(id)view
{
  v5 = MEMORY[0x277D44360];
  viewCopy = view;
  nameCopy = name;
  v8 = [[v5 alloc] initWithTestName:nameCopy scrollView:viewCopy completionHandler:0];

  [MEMORY[0x277D44368] runTestWithParameters:v8];
}

- (unint64_t)axisForDirection:(unint64_t)direction
{
  if (direction)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (int64_t)lengthForNumberOfScreens:(int64_t)screens direction:(unint64_t)direction size:(CGSize)size
{
  if (direction == 1)
  {
    width = size.width;
  }

  else
  {
    if (direction)
    {
      return self;
    }

    width = size.height;
  }

  return width * screens;
}

@end
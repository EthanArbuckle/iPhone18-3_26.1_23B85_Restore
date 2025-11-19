@interface _PSCNAutocompleteFeedbackProcessingTask
+ (id)bookmarkFileNameForImplicit:(BOOL)a3;
+ (id)bundleIDsToProcess;
+ (id)sourceBundleIDsToIgnore;
- (void)execute;
@end

@implementation _PSCNAutocompleteFeedbackProcessingTask

+ (id)bundleIDsToProcess
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc(MEMORY[0x1E695DFD8]);
  v4 = +[_PSConstants mobileFacetimeBundleId];
  v5 = +[_PSConstants macFacetimeBundleId];
  v6 = [v3 initWithObjects:{v4, v5, 0}];

  objc_autoreleasePoolPop(v2);

  return v6;
}

+ (id)sourceBundleIDsToIgnore
{
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"pstool", 0}];
  objc_autoreleasePoolPop(v2);

  return v3;
}

+ (id)bookmarkFileNameForImplicit:(BOOL)a3
{
  if (a3)
  {
    v3 = @".metadata.archive";
  }

  else
  {
    v3 = @"-explicit.metadata.archive";
  }

  v4 = [@"CNA" stringByAppendingString:v3];

  return v4;
}

- (void)execute
{
  [objc_opt_class() runOverExplicit];
  v2 = objc_opt_class();

  [v2 runOverImplicit];
}

+ (void)persistBookmarkTime:overImplicit:to:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)loadBookmarkTimeOverImplicit:from:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end
@interface SFApplicationExtensionsEvaluationUtilities
+ (BOOL)isPredicateSafeToExecute:(id)a3 withObject:(id)a4 identifier:(id)a5;
@end

@implementation SFApplicationExtensionsEvaluationUtilities

+ (BOOL)isPredicateSafeToExecute:(id)a3 withObject:(id)a4 identifier:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  IsSafePredicateForObjectWithSubquerySubstitutions = _SFApplicationExtensionIsSafePredicateForObjectWithSubquerySubstitutions(v7, a4, MEMORY[0x1E695E0F8], v8);
  if ((IsSafePredicateForObjectWithSubquerySubstitutions & 1) == 0)
  {
    v10 = share_sheet_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315650;
      v14 = "+[SFApplicationExtensionsEvaluationUtilities isPredicateSafeToExecute:withObject:identifier:]";
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_1A9662000, v10, OS_LOG_TYPE_DEFAULT, "%s [%@]: NSPredicate considered unsafe: %@", &v13, 0x20u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return IsSafePredicateForObjectWithSubquerySubstitutions;
}

@end
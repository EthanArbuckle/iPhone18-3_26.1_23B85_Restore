@interface SFApplicationExtensionsEvaluationUtilities
+ (BOOL)isPredicateSafeToExecute:(id)execute withObject:(id)object identifier:(id)identifier;
@end

@implementation SFApplicationExtensionsEvaluationUtilities

+ (BOOL)isPredicateSafeToExecute:(id)execute withObject:(id)object identifier:(id)identifier
{
  v19 = *MEMORY[0x1E69E9840];
  executeCopy = execute;
  identifierCopy = identifier;
  IsSafePredicateForObjectWithSubquerySubstitutions = _SFApplicationExtensionIsSafePredicateForObjectWithSubquerySubstitutions(executeCopy, object, MEMORY[0x1E695E0F8], identifierCopy);
  if ((IsSafePredicateForObjectWithSubquerySubstitutions & 1) == 0)
  {
    v10 = share_sheet_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315650;
      v14 = "+[SFApplicationExtensionsEvaluationUtilities isPredicateSafeToExecute:withObject:identifier:]";
      v15 = 2112;
      v16 = identifierCopy;
      v17 = 2112;
      v18 = executeCopy;
      _os_log_impl(&dword_1A9662000, v10, OS_LOG_TYPE_DEFAULT, "%s [%@]: NSPredicate considered unsafe: %@", &v13, 0x20u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return IsSafePredicateForObjectWithSubquerySubstitutions;
}

@end
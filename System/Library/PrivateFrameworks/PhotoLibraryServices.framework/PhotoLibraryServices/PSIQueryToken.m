@interface PSIQueryToken
- (PSIQueryToken)initWithIdentifier:(id)a3 userCategory:(unint64_t)a4;
- (PSIQueryToken)initWithText:(id)a3 userCategory:(unint64_t)a4 matchType:(unint64_t)a5;
@end

@implementation PSIQueryToken

- (PSIQueryToken)initWithIdentifier:(id)a3 userCategory:(unint64_t)a4
{
  v5 = PLSearchBackendQueryGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_FAULT, "This class is not supported. Please remove usage of deprecated Photos IPI.", v7, 2u);
  }

  return [(PSIQueryToken *)self init];
}

- (PSIQueryToken)initWithText:(id)a3 userCategory:(unint64_t)a4 matchType:(unint64_t)a5
{
  v6 = PLSearchBackendQueryGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_FAULT, "This class is not supported. Please remove usage of deprecated Photos IPI.", v8, 2u);
  }

  return [(PSIQueryToken *)self init];
}

@end
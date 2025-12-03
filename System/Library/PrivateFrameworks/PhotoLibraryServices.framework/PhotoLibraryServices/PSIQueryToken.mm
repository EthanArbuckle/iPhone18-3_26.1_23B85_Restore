@interface PSIQueryToken
- (PSIQueryToken)initWithIdentifier:(id)identifier userCategory:(unint64_t)category;
- (PSIQueryToken)initWithText:(id)text userCategory:(unint64_t)category matchType:(unint64_t)type;
@end

@implementation PSIQueryToken

- (PSIQueryToken)initWithIdentifier:(id)identifier userCategory:(unint64_t)category
{
  v5 = PLSearchBackendQueryGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_FAULT, "This class is not supported. Please remove usage of deprecated Photos IPI.", v7, 2u);
  }

  return [(PSIQueryToken *)self init];
}

- (PSIQueryToken)initWithText:(id)text userCategory:(unint64_t)category matchType:(unint64_t)type
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
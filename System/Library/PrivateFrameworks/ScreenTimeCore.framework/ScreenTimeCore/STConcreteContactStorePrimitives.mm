@interface STConcreteContactStorePrimitives
- (id)numberOfContactsForOpaqueFamilyMember:(id)member;
@end

@implementation STConcreteContactStorePrimitives

- (id)numberOfContactsForOpaqueFamilyMember:(id)member
{
  memberCopy = member;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_1001123E8();
  }

  v4 = memberCopy;
  v5 = +[STLog contactStorePrimitives];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Getting number of contacts for family member: %{private}@", buf, 0xCu);
  }

  v6 = [CNContactStore storeForFamilyMember:v4];
  v7 = [[CNContactFetchRequest alloc] initWithKeysToFetch:&__NSArray0__struct];
  v15 = 0;
  v8 = [v6 contactCountForFetchRequest:v7 error:&v15];
  v9 = v15;
  v10 = +[STLog contactStorePrimitives];
  v11 = v10;
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Got number of contacts: %{private}@", buf, 0xCu);
    }

    v12 = [STResult success:v8];
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100112494(v9, v11);
    }

    v12 = [STResult failure:v9];
  }

  v13 = v12;

  return v13;
}

@end
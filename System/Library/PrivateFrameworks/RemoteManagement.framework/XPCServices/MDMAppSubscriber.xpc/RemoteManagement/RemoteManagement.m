int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_class();

  return [RMConfigurationSubscriberClient runConfigurationSubscriberClientWithApplicators:&__NSArray0__struct publisherClass:v3];
}

void sub_100000E7C(id a1)
{
  qword_100008538 = os_log_create("com.apple.remotemanagementd", "mDMAppStatus");

  _objc_release_x1();
}

void sub_1000010F0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = [NSMutableArray alloc];
    v7 = [v5 appsByBundleIdentifier];
    v8 = [v6 initWithCapacity:{objc_msgSend(v7, "count")}];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = [v5 appsByBundleIdentifier];
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      do
      {
        v13 = 0;
        do
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v24 + 1) + 8 * v13);
          v15 = [v5 appsByBundleIdentifier];
          v16 = [v15 objectForKeyedSubscript:v14];

          v17 = [v16 sourceIdentifier];

          if (!v17)
          {
            v18 = *(a1 + 32);
            v19 = [objc_opt_class() appStatusForApp:v16];
            v20 = [v19 serializeWithType:1];
            [v8 addObject:v20];
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v11);
    }

    v21 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [*(a1 + 40) count]);
    [v21 setObject:v8 forKeyedSubscript:RMModelStatusItemMDMApp];
    v22 = *(a1 + 48);
    v23 = [v21 copy];
    (*(v22 + 16))(v22, v23, 0);
  }
}

void sub_10000151C(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Querying mdm app status for key paths: %{public}@", &v2, 0xCu);
}
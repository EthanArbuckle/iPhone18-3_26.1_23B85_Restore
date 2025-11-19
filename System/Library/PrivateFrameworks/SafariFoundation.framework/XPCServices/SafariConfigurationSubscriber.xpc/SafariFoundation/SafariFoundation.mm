int main(int argc, const char **argv, const char **envp)
{
  v6 = objc_opt_class();
  v3 = [NSArray arrayWithObjects:&v6 count:1];
  v4 = [RMConfigurationSubscriberClient runConfigurationSubscriberClientWithApplicators:v3 publisherClass:0];

  return v4;
}

uint64_t sub_100000F14()
{
  if (qword_10000CF40 != -1)
  {
    sub_100002F54();
  }

  return qword_10000CF38;
}

void sub_100000F4C(id a1)
{
  qword_10000CF38 = os_log_create("com.apple.SafariShared.SafariConfigurationSubscriber", "ManagedExtensions");

  _objc_release_x1();
}

RMStoreDeclarationKey *__cdecl sub_1000010BC(id a1, NSString *a2)
{
  v2 = [RMStoreDeclarationKey newDeclarationKey:a2];

  return v2;
}

id sub_1000017FC(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 isEqualToString:RMModelSettingsState_alwaysOn])
    {
      v3 = WBSManagedExtensionsConfigurationDisplayAlwaysOnText();
LABEL_8:
      v4 = v3;
      goto LABEL_10;
    }

    if ([v2 isEqualToString:RMModelSettingsState_alwaysOff])
    {
      v3 = WBSManagedExtensionsConfigurationDisplayAlwaysOffText();
      goto LABEL_8;
    }

    if ([v2 isEqualToString:RMModelSettingsState_allowed])
    {
      v3 = WBSManagedExtensionsConfigurationDisplayAllowedText();
      goto LABEL_8;
    }
  }

  v4 = 0;
LABEL_10:

  return v4;
}

BOOL sub_1000027F8(id a1, id a2, id *a3)
{
  v3 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

BOOL sub_100002844(id a1, id a2, id *a3)
{
  v3 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}
void sub_100000D1C(id a1)
{
  v1 = qword_1000081B8;
  qword_1000081B8 = &off_100004448;
}

void sub_100000F6C(uint64_t a1)
{
  v2 = [[SUManagerClient alloc] initWithDelegate:0 queue:&_dispatch_main_q clientType:1];
  if (v2)
  {
    v3 = objc_alloc_init(SURollbackOptions);
    [v3 setPromptForConsent:1];
    [v3 setPromptForPasscode:1];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000010AC;
    v6[3] = &unk_1000041C0;
    v4 = *(a1 + 40);
    v6[4] = *(a1 + 32);
    v7 = v4;
    v8 = v2;
    v9 = *(a1 + 48);
    [v8 rollbackUpdateWithOptions:v3 withResult:v6];
  }

  else
  {
    SULogInfo();
    v5 = *(a1 + 48);
    if (v5)
    {
      (*(v5 + 16))(v5, 1);
    }
  }
}

void sub_1000010AC(uint64_t a1, char a2, void *a3, void *a4)
{
  v15 = a3;
  v7 = a4;
  SULogInfo();
  if (a2)
  {
    v8 = [SUAnalyticsEvent alloc];
    v9 = [v8 initWithEventName:kSUAnalyticsUsageEventName];
    v10 = kSUAnalyticsUserInteractionType;
    v11 = *(a1 + 32);
    v12 = [*(a1 + 40) userInfo];
    v13 = [v11 rollbackSuggestionTypeFromUserInfo:v12];
    [v9 setEventPayloadEntry:v10 stringValue:v13];

    [*(a1 + 48) submitSUAnalyticsEvent:v9];
    [*(a1 + 32) clearFollowUpItem:*(a1 + 40)];
  }

  v14 = *(a1 + 56);
  if (v14)
  {
    (*(v14 + 16))(v14, 1);
  }
}
void sub_1360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1378(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1390(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = a3;
  v4 = [SUAnalyticsEvent alloc];
  v5 = [v4 initWithEventName:kSUAnalyticsUsageEventName];
  [v5 setEventPayloadEntry:kSUAnalyticsUserInteractionType stringValue:kSUUpdateDeletedFromUI];
  [*(*(*(a1 + 40) + 8) + 40) submitSUAnalyticsEvent:v5];
  v6 = [*(a1 + 32) view];
  [v6 setUserInteractionEnabled:1];

  v7 = +[PSNavBarSpinnerManager sharedSpinnerManager];
  [v7 stopAnimatingForIdentifier:@"softwareUpdateDeletion"];

  if (!v15)
  {
    goto LABEL_4;
  }

  v8 = [v15 domain];
  if ([v8 isEqualToString:SUErrorDomain])
  {
    v9 = [v15 code];

    v10 = v15;
    if (v9 == &dword_0 + 3)
    {
LABEL_4:
      v11 = +[ICQUsageStorageMonitor sharedMonitor];
      [v11 clearUsageDataCache];

      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + OBJC_IVAR___PSViewController__parentController));
      [WeakRetained reloadSpecifiers];

      v13 = [*(a1 + 32) navigationController];
      v14 = [v13 popViewControllerAnimated:1];

      goto LABEL_7;
    }
  }

  else
  {

    v10 = v15;
  }

  NSLog(@"Error deleting update: %@", v10);
LABEL_7:
  [*(*(*(a1 + 40) + 8) + 40) invalidate];
}

void sub_16A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_16B8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_16D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 descriptor];
  v8 = [v6 totalSpaceConsumed];

  if (v8)
  {
    v9 = objc_alloc_init(PSUsageBundleApp);
    v10 = *(a1 + 32);
    v11 = *(v10 + 8);
    *(v10 + 8) = v9;

    v12 = *(*(a1 + 32) + 8);
    v13 = [v7 humanReadableUpdateName];
    [v12 setName:v13];

    *&v14 = v8;
    [*(*(a1 + 32) + 8) setTotalSize:v14];
    [*(*(a1 + 32) + 8) setBundleIdentifier:@"com.apple.Preferences"];
    if ([v5 type] == &dword_0 + 1)
    {
      [*(*(a1 + 32) + 8) setDeletionRestricted:1];
    }

    v15 = [v7 humanReadableUpdateName];
    v16 = [PSUsageBundleCategory categoryNamed:v15 withIdentifier:@"com.apple.softwareupdate" forUsageBundleApp:*(*(a1 + 32) + 8)];

    v17 = *(*(a1 + 32) + 8);
    v22 = v16;
    v18 = [NSArray arrayWithObjects:&v22 count:1];
    [v17 setCategories:v18];

    v19 = [[NSArray alloc] initWithObjects:{*(*(a1 + 32) + 8), 0}];
    v20 = *(*(a1 + 56) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;
  }

  dispatch_semaphore_signal(*(a1 + 40));
  [*(a1 + 48) invalidate];
}
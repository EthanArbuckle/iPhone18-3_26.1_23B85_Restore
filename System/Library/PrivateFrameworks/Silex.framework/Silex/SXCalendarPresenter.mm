@interface SXCalendarPresenter
- (SXCalendarPresenter)initWithViewControllerPresenting:(id)presenting eventStoreProvider:(id)provider;
- (void)presentCalendarEvent:(id)event;
@end

@implementation SXCalendarPresenter

- (SXCalendarPresenter)initWithViewControllerPresenting:(id)presenting eventStoreProvider:(id)provider
{
  presentingCopy = presenting;
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = SXCalendarPresenter;
  v9 = [(SXCalendarPresenter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_viewControllerPresenting, presenting);
    objc_storeStrong(&v10->_eventStoreProvider, provider);
  }

  return v10;
}

- (void)presentCalendarEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy;
  if (eventCopy)
  {
    startDate = [eventCopy startDate];

    if (startDate)
    {
      objc_initWeak(&location, self);
      v7 = dispatch_get_global_queue(25, 0);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __44__SXCalendarPresenter_presentCalendarEvent___block_invoke;
      v8[3] = &unk_1E84FEF60;
      v8[4] = self;
      objc_copyWeak(&v10, &location);
      v9 = v5;
      dispatch_async(v7, v8);

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }
  }
}

void __44__SXCalendarPresenter_presentCalendarEvent___block_invoke(id *a1)
{
  v2 = [a1[4] eventStoreProvider];
  v3 = [v2 eventStore];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__SXCalendarPresenter_presentCalendarEvent___block_invoke_2;
  v7[3] = &unk_1E84FEF38;
  objc_copyWeak(&v11, a1 + 6);
  v4 = v3;
  v8 = v4;
  v5 = a1[5];
  v6 = a1[4];
  v9 = v5;
  v10 = v6;
  [v4 requestWriteOnlyAccessToEventsWithCompletion:v7];

  objc_destroyWeak(&v11);
}

void __44__SXCalendarPresenter_presentCalendarEvent___block_invoke_2(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__SXCalendarPresenter_presentCalendarEvent___block_invoke_3;
  block[3] = &unk_1E84FEF10;
  v10 = a2;
  objc_copyWeak(&v9, (a1 + 56));
  v6 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7 = v3;
  v8 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
}

void __44__SXCalendarPresenter_presentCalendarEvent___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 64) == 1 && (v2 = objc_loadWeakRetained((a1 + 56)), v2, v2))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v3 = [MEMORY[0x1E6966A08] eventWithEventStore:*(a1 + 32)];
    v4 = [*(a1 + 40) startDate];
    [v3 setStartDate:v4];

    v5 = [*(a1 + 40) endDate];
    [v3 setEndDate:v5];

    v6 = [*(a1 + 40) timeZone];
    [v3 setTimeZone:v6];

    [v3 setAllDay:{objc_msgSend(*(a1 + 40), "allDay")}];
    v7 = [*(a1 + 40) title];
    [v3 setTitle:v7];

    v8 = [*(a1 + 40) URL];
    [v3 setURL:v8];

    v9 = [*(a1 + 40) notes];
    v10 = [v9 text];
    [v3 setNotes:v10];

    v11 = [*(a1 + 40) location];
    [v3 setLocation:v11];

    v12 = objc_alloc_init(MEMORY[0x1E6966B88]);
    [v12 setEventStore:*(a1 + 32)];
    [v12 setEvent:v3];
    [v12 setEditViewDelegate:WeakRetained];
    v13 = [WeakRetained viewControllerPresenting];
    [v13 presentViewController:v12 animated:1];
  }

  else
  {
    v14 = MEMORY[0x1E69DC650];
    v15 = SXBundle();
    v16 = [v15 localizedStringForKey:@"Can’t Access Calendar" value:&stru_1F532F6C0 table:0];
    v17 = SXBundle();
    v18 = [v17 localizedStringForKey:@"SXRequirePermissionToAccessCalendar" value:&stru_1F532F6C0 table:0];
    WeakRetained = [v14 alertControllerWithTitle:v16 message:v18 preferredStyle:1];

    v19 = MEMORY[0x1E69DC648];
    v20 = SXBundle();
    v21 = [v20 localizedStringForKey:@"OK" value:&stru_1F532F6C0 table:0];
    v22 = [v19 actionWithTitle:v21 style:0 handler:0];
    [WeakRetained addAction:v22];

    v3 = [*(a1 + 48) viewControllerPresenting];
    [v3 presentViewController:WeakRetained animated:1];
  }
}

@end
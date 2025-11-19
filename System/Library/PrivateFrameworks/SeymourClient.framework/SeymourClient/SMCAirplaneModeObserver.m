@interface SMCAirplaneModeObserver
- (SMCAirplaneModeObserver)initWithQueue:(id)a3;
- (SMCAirplaneModeObserverDelegate)delegate;
- (void)airplaneModeChanged;
@end

@implementation SMCAirplaneModeObserver

- (SMCAirplaneModeObserver)initWithQueue:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SMCAirplaneModeObserver;
  v6 = [(SMCAirplaneModeObserver *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    v8 = [objc_alloc(MEMORY[0x1E698B6B0]) initWithQueue:v5];
    radiosPreferences = v7->_radiosPreferences;
    v7->_radiosPreferences = v8;

    [(RadiosPreferences *)v7->_radiosPreferences setDelegate:v7];
  }

  return v7;
}

- (void)airplaneModeChanged
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained airplaneModeChanged];
}

- (SMCAirplaneModeObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
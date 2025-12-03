@interface ABSContactsSource
- (ABSContactsSource)initWithKeys:(id)keys store:(id)store;
- (void)dealloc;
@end

@implementation ABSContactsSource

- (ABSContactsSource)initWithKeys:(id)keys store:(id)store
{
  keysCopy = keys;
  storeCopy = store;
  v10.receiver = self;
  v10.super_class = ABSContactsSource;
  v8 = [(ABSContactsSource *)&v10 init];
  if (v8)
  {
    if (!keysCopy)
    {
      v11 = CNContactIdentifierKey;
      keysCopy = [NSArray arrayWithObjects:&v11 count:1];
    }

    [(ABSContactsSource *)v8 setKeysToFetch:keysCopy];
    [(ABSContactsSource *)v8 setGtLogger:ct_green_tea_logger_create()];
    [(ABSContactsSource *)v8 setStore:storeCopy];
  }

  return v8;
}

- (void)dealloc
{
  [(ABSContactsSource *)self gtLogger];
  ct_green_tea_logger_destroy();
  v3.receiver = self;
  v3.super_class = ABSContactsSource;
  [(ABSContactsSource *)&v3 dealloc];
}

@end
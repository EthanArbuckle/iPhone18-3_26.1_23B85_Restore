@interface ABSContactsSource
- (ABSContactsSource)initWithKeys:(id)a3 store:(id)a4;
- (void)dealloc;
@end

@implementation ABSContactsSource

- (ABSContactsSource)initWithKeys:(id)a3 store:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10.receiver = self;
  v10.super_class = ABSContactsSource;
  v8 = [(ABSContactsSource *)&v10 init];
  if (v8)
  {
    if (!v6)
    {
      v11 = CNContactIdentifierKey;
      v6 = [NSArray arrayWithObjects:&v11 count:1];
    }

    [(ABSContactsSource *)v8 setKeysToFetch:v6];
    [(ABSContactsSource *)v8 setGtLogger:ct_green_tea_logger_create()];
    [(ABSContactsSource *)v8 setStore:v7];
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
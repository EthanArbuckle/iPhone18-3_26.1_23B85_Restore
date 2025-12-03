@interface PLPersistentHistoryMarkerDate
- (PLPersistentHistoryMarkerDate)initWithDate:(id)date;
@end

@implementation PLPersistentHistoryMarkerDate

- (PLPersistentHistoryMarkerDate)initWithDate:(id)date
{
  dateCopy = date;
  v10.receiver = self;
  v10.super_class = PLPersistentHistoryMarkerDate;
  v5 = [(PLPersistentHistoryMarkerDate *)&v10 init];
  if (v5)
  {
    v6 = [dateCopy copy];
    date = v5->_date;
    v5->_date = v6;

    v8 = v5;
  }

  return v5;
}

@end
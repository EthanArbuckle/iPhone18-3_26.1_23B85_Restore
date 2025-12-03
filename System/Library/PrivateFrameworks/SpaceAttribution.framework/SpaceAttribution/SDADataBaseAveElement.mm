@interface SDADataBaseAveElement
- (SDADataBaseAveElement)initWithCoder:(id)coder;
- (void)adjElemWithNumOfPristine:(unint64_t)pristine sizeOfPristine:(unint64_t)ofPristine numOfClearedPristine:(unint64_t)clearedPristine sizeOfClearedPristine:(unint64_t)ofClearedPristine numOfEvents:(unint64_t)events sizeOfEvents:(unint64_t)ofEvents numOfDays:(unint64_t)days;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SDADataBaseAveElement

- (void)encodeWithCoder:(id)coder
{
  numOfPristineFiles = self->_numOfPristineFiles;
  coderCopy = coder;
  [coderCopy encodeObject:numOfPristineFiles forKey:@"num_of_pristine_files"];
  [coderCopy encodeObject:self->_sizeOfPristineFiles forKey:@"size_of_pristine_files"];
  [coderCopy encodeObject:self->_numOfPristineToday forKey:@"num_of_pristine_today"];
  [coderCopy encodeObject:self->_sizeOfPristineToday forKey:@"size_of_pristine_today"];
  [coderCopy encodeObject:self->_totalNumberOfPristine forKey:@"total_number_of_pristine"];
  [coderCopy encodeObject:self->_totalSizeOfPristine forKey:@"total_size_of_pristine"];
  [coderCopy encodeObject:self->_numOfEvents30d forKey:@"num_of_event_30d"];
  [coderCopy encodeObject:self->_sizeOfEvents30d forKey:@"size_of_event_30d"];
  [coderCopy encodeObject:self->_numOfPristine30d forKey:@"num_of_pristine_30d"];
  [coderCopy encodeObject:self->_sizeOfPristine30d forKey:@"size_of_pristine_30d"];
  [coderCopy encodeObject:self->_numOfAveragedDays forKey:@"num_of_average_days"];
}

- (SDADataBaseAveElement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = SDADataBaseAveElement;
  v5 = [(SDADataBaseAveElement *)&v29 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"num_of_pristine_files"];
    numOfPristineFiles = v5->_numOfPristineFiles;
    v5->_numOfPristineFiles = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"size_of_pristine_files"];
    sizeOfPristineFiles = v5->_sizeOfPristineFiles;
    v5->_sizeOfPristineFiles = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"num_of_pristine_today"];
    numOfPristineToday = v5->_numOfPristineToday;
    v5->_numOfPristineToday = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"size_of_pristine_today"];
    sizeOfPristineToday = v5->_sizeOfPristineToday;
    v5->_sizeOfPristineToday = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"total_number_of_pristine"];
    totalNumberOfPristine = v5->_totalNumberOfPristine;
    v5->_totalNumberOfPristine = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"total_size_of_pristine"];
    totalSizeOfPristine = v5->_totalSizeOfPristine;
    v5->_totalSizeOfPristine = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"num_of_event_30d"];
    numOfEvents30d = v5->_numOfEvents30d;
    v5->_numOfEvents30d = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"size_of_event_30d"];
    sizeOfEvents30d = v5->_sizeOfEvents30d;
    v5->_sizeOfEvents30d = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"num_of_pristine_30d"];
    numOfPristine30d = v5->_numOfPristine30d;
    v5->_numOfPristine30d = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"size_of_pristine_30d"];
    sizeOfPristine30d = v5->_sizeOfPristine30d;
    v5->_sizeOfPristine30d = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"num_of_average_days"];
    numOfAveragedDays = v5->_numOfAveragedDays;
    v5->_numOfAveragedDays = v26;
  }

  return v5;
}

- (void)adjElemWithNumOfPristine:(unint64_t)pristine sizeOfPristine:(unint64_t)ofPristine numOfClearedPristine:(unint64_t)clearedPristine sizeOfClearedPristine:(unint64_t)ofClearedPristine numOfEvents:(unint64_t)events sizeOfEvents:(unint64_t)ofEvents numOfDays:(unint64_t)days
{
  v14 = pristine - [(NSNumber *)self->_numOfPristineFiles unsignedLongLongValue]+ clearedPristine;
  v15 = ofPristine - [(NSNumber *)self->_sizeOfPristineFiles unsignedLongLongValue]+ ofClearedPristine;
  v16 = [NSNumber numberWithUnsignedLongLong:pristine];
  numOfPristineFiles = self->_numOfPristineFiles;
  self->_numOfPristineFiles = v16;

  v18 = [NSNumber numberWithUnsignedLongLong:ofPristine];
  sizeOfPristineFiles = self->_sizeOfPristineFiles;
  self->_sizeOfPristineFiles = v18;

  days = [NSNumber numberWithLongLong:(1000 * v14 + (days >> 1)) / days];
  numOfPristineToday = self->_numOfPristineToday;
  self->_numOfPristineToday = days;

  days2 = [NSNumber numberWithLongLong:(1000 * v15 + (days >> 1)) / days];
  sizeOfPristineToday = self->_sizeOfPristineToday;
  self->_sizeOfPristineToday = days2;

  unsignedLongLongValue = [(NSNumber *)self->_totalNumberOfPristine unsignedLongLongValue];
  unsignedLongLongValue2 = [(NSNumber *)self->_totalSizeOfPristine unsignedLongLongValue];
  v26 = [NSNumber numberWithUnsignedLongLong:unsignedLongLongValue + v14];
  totalNumberOfPristine = self->_totalNumberOfPristine;
  self->_totalNumberOfPristine = v26;

  v28 = [NSNumber numberWithUnsignedLongLong:unsignedLongLongValue2 + v15];
  totalSizeOfPristine = self->_totalSizeOfPristine;
  self->_totalSizeOfPristine = v28;

  unsignedLongLongValue3 = [(NSNumber *)self->_numOfAveragedDays unsignedLongLongValue];
  if (unsignedLongLongValue3 + days >= 0x1E)
  {
    v31 = 30;
  }

  else
  {
    v31 = unsignedLongLongValue3 + days;
  }

  v32 = [NSNumber numberWithUnsignedLongLong:v31];
  numOfAveragedDays = self->_numOfAveragedDays;
  self->_numOfAveragedDays = v32;

  v34 = [NSNumber numberWithUnsignedLongLong:[SASupport calculateMovingSumFor:[(NSNumber *)self->_numOfPristine30d unsignedLongLongValue] with:1000 * pristine numOfSamples:days windowLength:v31]];
  numOfPristine30d = self->_numOfPristine30d;
  self->_numOfPristine30d = v34;

  v36 = [NSNumber numberWithUnsignedLongLong:[SASupport calculateMovingSumFor:[(NSNumber *)self->_sizeOfPristine30d unsignedLongLongValue] with:1000 * ofPristine numOfSamples:days windowLength:v31]];
  sizeOfPristine30d = self->_sizeOfPristine30d;
  self->_sizeOfPristine30d = v36;

  v38 = [NSNumber numberWithUnsignedLongLong:[SASupport calculateMovingSumFor:[(NSNumber *)self->_numOfEvents30d unsignedLongLongValue] with:(1000 * events + (days >> 1)) / days numOfSamples:days windowLength:v31]];
  numOfEvents30d = self->_numOfEvents30d;
  self->_numOfEvents30d = v38;

  v40 = [NSNumber numberWithUnsignedLongLong:[SASupport calculateMovingSumFor:[(NSNumber *)self->_sizeOfEvents30d unsignedLongLongValue] with:(1000 * ofEvents + (days >> 1)) / days numOfSamples:days windowLength:v31]];
  sizeOfEvents30d = self->_sizeOfEvents30d;
  self->_sizeOfEvents30d = v40;

  self->_updated = 1;
}

@end
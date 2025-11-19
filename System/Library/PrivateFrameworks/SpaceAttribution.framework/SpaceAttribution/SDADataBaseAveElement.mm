@interface SDADataBaseAveElement
- (SDADataBaseAveElement)initWithCoder:(id)a3;
- (void)adjElemWithNumOfPristine:(unint64_t)a3 sizeOfPristine:(unint64_t)a4 numOfClearedPristine:(unint64_t)a5 sizeOfClearedPristine:(unint64_t)a6 numOfEvents:(unint64_t)a7 sizeOfEvents:(unint64_t)a8 numOfDays:(unint64_t)a9;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SDADataBaseAveElement

- (void)encodeWithCoder:(id)a3
{
  numOfPristineFiles = self->_numOfPristineFiles;
  v5 = a3;
  [v5 encodeObject:numOfPristineFiles forKey:@"num_of_pristine_files"];
  [v5 encodeObject:self->_sizeOfPristineFiles forKey:@"size_of_pristine_files"];
  [v5 encodeObject:self->_numOfPristineToday forKey:@"num_of_pristine_today"];
  [v5 encodeObject:self->_sizeOfPristineToday forKey:@"size_of_pristine_today"];
  [v5 encodeObject:self->_totalNumberOfPristine forKey:@"total_number_of_pristine"];
  [v5 encodeObject:self->_totalSizeOfPristine forKey:@"total_size_of_pristine"];
  [v5 encodeObject:self->_numOfEvents30d forKey:@"num_of_event_30d"];
  [v5 encodeObject:self->_sizeOfEvents30d forKey:@"size_of_event_30d"];
  [v5 encodeObject:self->_numOfPristine30d forKey:@"num_of_pristine_30d"];
  [v5 encodeObject:self->_sizeOfPristine30d forKey:@"size_of_pristine_30d"];
  [v5 encodeObject:self->_numOfAveragedDays forKey:@"num_of_average_days"];
}

- (SDADataBaseAveElement)initWithCoder:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = SDADataBaseAveElement;
  v5 = [(SDADataBaseAveElement *)&v29 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"num_of_pristine_files"];
    numOfPristineFiles = v5->_numOfPristineFiles;
    v5->_numOfPristineFiles = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"size_of_pristine_files"];
    sizeOfPristineFiles = v5->_sizeOfPristineFiles;
    v5->_sizeOfPristineFiles = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"num_of_pristine_today"];
    numOfPristineToday = v5->_numOfPristineToday;
    v5->_numOfPristineToday = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"size_of_pristine_today"];
    sizeOfPristineToday = v5->_sizeOfPristineToday;
    v5->_sizeOfPristineToday = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"total_number_of_pristine"];
    totalNumberOfPristine = v5->_totalNumberOfPristine;
    v5->_totalNumberOfPristine = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"total_size_of_pristine"];
    totalSizeOfPristine = v5->_totalSizeOfPristine;
    v5->_totalSizeOfPristine = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"num_of_event_30d"];
    numOfEvents30d = v5->_numOfEvents30d;
    v5->_numOfEvents30d = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"size_of_event_30d"];
    sizeOfEvents30d = v5->_sizeOfEvents30d;
    v5->_sizeOfEvents30d = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"num_of_pristine_30d"];
    numOfPristine30d = v5->_numOfPristine30d;
    v5->_numOfPristine30d = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"size_of_pristine_30d"];
    sizeOfPristine30d = v5->_sizeOfPristine30d;
    v5->_sizeOfPristine30d = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"num_of_average_days"];
    numOfAveragedDays = v5->_numOfAveragedDays;
    v5->_numOfAveragedDays = v26;
  }

  return v5;
}

- (void)adjElemWithNumOfPristine:(unint64_t)a3 sizeOfPristine:(unint64_t)a4 numOfClearedPristine:(unint64_t)a5 sizeOfClearedPristine:(unint64_t)a6 numOfEvents:(unint64_t)a7 sizeOfEvents:(unint64_t)a8 numOfDays:(unint64_t)a9
{
  v14 = a3 - [(NSNumber *)self->_numOfPristineFiles unsignedLongLongValue]+ a5;
  v15 = a4 - [(NSNumber *)self->_sizeOfPristineFiles unsignedLongLongValue]+ a6;
  v16 = [NSNumber numberWithUnsignedLongLong:a3];
  numOfPristineFiles = self->_numOfPristineFiles;
  self->_numOfPristineFiles = v16;

  v18 = [NSNumber numberWithUnsignedLongLong:a4];
  sizeOfPristineFiles = self->_sizeOfPristineFiles;
  self->_sizeOfPristineFiles = v18;

  v20 = [NSNumber numberWithLongLong:(1000 * v14 + (a9 >> 1)) / a9];
  numOfPristineToday = self->_numOfPristineToday;
  self->_numOfPristineToday = v20;

  v22 = [NSNumber numberWithLongLong:(1000 * v15 + (a9 >> 1)) / a9];
  sizeOfPristineToday = self->_sizeOfPristineToday;
  self->_sizeOfPristineToday = v22;

  v24 = [(NSNumber *)self->_totalNumberOfPristine unsignedLongLongValue];
  v25 = [(NSNumber *)self->_totalSizeOfPristine unsignedLongLongValue];
  v26 = [NSNumber numberWithUnsignedLongLong:v24 + v14];
  totalNumberOfPristine = self->_totalNumberOfPristine;
  self->_totalNumberOfPristine = v26;

  v28 = [NSNumber numberWithUnsignedLongLong:v25 + v15];
  totalSizeOfPristine = self->_totalSizeOfPristine;
  self->_totalSizeOfPristine = v28;

  v30 = [(NSNumber *)self->_numOfAveragedDays unsignedLongLongValue];
  if (v30 + a9 >= 0x1E)
  {
    v31 = 30;
  }

  else
  {
    v31 = v30 + a9;
  }

  v32 = [NSNumber numberWithUnsignedLongLong:v31];
  numOfAveragedDays = self->_numOfAveragedDays;
  self->_numOfAveragedDays = v32;

  v34 = [NSNumber numberWithUnsignedLongLong:[SASupport calculateMovingSumFor:[(NSNumber *)self->_numOfPristine30d unsignedLongLongValue] with:1000 * a3 numOfSamples:a9 windowLength:v31]];
  numOfPristine30d = self->_numOfPristine30d;
  self->_numOfPristine30d = v34;

  v36 = [NSNumber numberWithUnsignedLongLong:[SASupport calculateMovingSumFor:[(NSNumber *)self->_sizeOfPristine30d unsignedLongLongValue] with:1000 * a4 numOfSamples:a9 windowLength:v31]];
  sizeOfPristine30d = self->_sizeOfPristine30d;
  self->_sizeOfPristine30d = v36;

  v38 = [NSNumber numberWithUnsignedLongLong:[SASupport calculateMovingSumFor:[(NSNumber *)self->_numOfEvents30d unsignedLongLongValue] with:(1000 * a7 + (a9 >> 1)) / a9 numOfSamples:a9 windowLength:v31]];
  numOfEvents30d = self->_numOfEvents30d;
  self->_numOfEvents30d = v38;

  v40 = [NSNumber numberWithUnsignedLongLong:[SASupport calculateMovingSumFor:[(NSNumber *)self->_sizeOfEvents30d unsignedLongLongValue] with:(1000 * a8 + (a9 >> 1)) / a9 numOfSamples:a9 windowLength:v31]];
  sizeOfEvents30d = self->_sizeOfEvents30d;
  self->_sizeOfEvents30d = v40;

  self->_updated = 1;
}

@end
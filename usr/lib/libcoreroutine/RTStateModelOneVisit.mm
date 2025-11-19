@interface RTStateModelOneVisit
- (BOOL)isComplete;
- (RTStateModelOneVisit)init;
- (RTStateModelOneVisit)initWithCoder:(id)a3;
- (RTStateModelOneVisit)initWithLatitude:(double)a3 longitude:(double)a4 uncertainty:(double)a5 entryTimestamp:(double)a6 exitTimestamp:(double)a7 numOfDataPts:(int64_t)a8;
- (RTStateModelOneVisit)initWithLocation:(id)a3 entryExit:(id)a4 andNumOfDataPts:(int64_t)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTStateModelOneVisit

- (RTStateModelOneVisit)init
{
  v8.receiver = self;
  v8.super_class = RTStateModelOneVisit;
  v2 = [(RTStateModelOneVisit *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(RTStateModelLocation);
    [(RTStateModelOneVisit *)v2 setLocation:v3];

    v4 = objc_alloc_init(RTStateModelEntryExit);
    [(RTStateModelOneVisit *)v2 setEntryExit_s:v4];

    [(RTStateModelOneVisit *)v2 setNumOfDataPts:0];
    v5 = [MEMORY[0x277CCAD78] UUID];
    identifier = v2->_identifier;
    v2->_identifier = v5;
  }

  return v2;
}

- (RTStateModelOneVisit)initWithLocation:(id)a3 entryExit:(id)a4 andNumOfDataPts:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v15.receiver = self;
  v15.super_class = RTStateModelOneVisit;
  v10 = [(RTStateModelOneVisit *)&v15 init];
  v11 = v10;
  if (v10)
  {
    [(RTStateModelOneVisit *)v10 setLocation:v8];
    [(RTStateModelOneVisit *)v11 setEntryExit_s:v9];
    [(RTStateModelOneVisit *)v11 setNumOfDataPts:a5];
    v12 = [MEMORY[0x277CCAD78] UUID];
    identifier = v11->_identifier;
    v11->_identifier = v12;
  }

  return v11;
}

- (RTStateModelOneVisit)initWithLatitude:(double)a3 longitude:(double)a4 uncertainty:(double)a5 entryTimestamp:(double)a6 exitTimestamp:(double)a7 numOfDataPts:(int64_t)a8
{
  v25.receiver = self;
  v25.super_class = RTStateModelOneVisit;
  v14 = [(RTStateModelOneVisit *)&v25 init];
  if (v14)
  {
    v15 = [RTStateModelLocation alloc];
    v16 = [MEMORY[0x277CBEAA8] date];
    [v16 timeIntervalSinceReferenceDate];
    v18 = [(RTStateModelLocation *)v15 initWithLat:a3 Lon:a4 Uncertainty:a5 confidence:-1.0 andTimestamp_s:v17];
    location = v14->_location;
    v14->_location = v18;

    v20 = [[RTStateModelEntryExit alloc] initWithEntry:a6 exit:a7];
    EntryExit_s = v14->_EntryExit_s;
    v14->_EntryExit_s = v20;

    v14->_numOfDataPts = a8;
    v22 = [MEMORY[0x277CCAD78] UUID];
    identifier = v14->_identifier;
    v14->_identifier = v22;
  }

  return v14;
}

- (BOOL)isComplete
{
  v3 = [(RTStateModelOneVisit *)self EntryExit_s];
  [v3 entry_s];
  if (v4 <= -1.0)
  {
    v7 = 0;
  }

  else
  {
    v5 = [(RTStateModelOneVisit *)self EntryExit_s];
    [v5 exit_s];
    v7 = v6 > -1.0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(RTStateModelOneVisit *)self location];
  [v4 encodeObject:v5 forKey:@"location"];

  v6 = [(RTStateModelOneVisit *)self EntryExit_s];
  [v4 encodeObject:v6 forKey:@"EntryExit_s"];
}

- (RTStateModelOneVisit)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = RTStateModelOneVisit;
  v5 = [(RTStateModelOneVisit *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    [(RTStateModelOneVisit *)v5 setLocation:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EntryExit_s"];
    [(RTStateModelOneVisit *)v5 setEntryExit_s:v7];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(RTStateModelOneVisit *)self location];
  v5 = [(RTStateModelOneVisit *)self EntryExit_s];
  v6 = [v3 stringWithFormat:@"%@, %@, numDataPts, %ld", v4, v5, -[RTStateModelOneVisit numOfDataPts](self, "numOfDataPts")];

  return v6;
}

@end
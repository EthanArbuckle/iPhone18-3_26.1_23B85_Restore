@interface RTStateModelOneVisit
- (BOOL)isComplete;
- (RTStateModelOneVisit)init;
- (RTStateModelOneVisit)initWithCoder:(id)coder;
- (RTStateModelOneVisit)initWithLatitude:(double)latitude longitude:(double)longitude uncertainty:(double)uncertainty entryTimestamp:(double)timestamp exitTimestamp:(double)exitTimestamp numOfDataPts:(int64_t)pts;
- (RTStateModelOneVisit)initWithLocation:(id)location entryExit:(id)exit andNumOfDataPts:(int64_t)pts;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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
    uUID = [MEMORY[0x277CCAD78] UUID];
    identifier = v2->_identifier;
    v2->_identifier = uUID;
  }

  return v2;
}

- (RTStateModelOneVisit)initWithLocation:(id)location entryExit:(id)exit andNumOfDataPts:(int64_t)pts
{
  locationCopy = location;
  exitCopy = exit;
  v15.receiver = self;
  v15.super_class = RTStateModelOneVisit;
  v10 = [(RTStateModelOneVisit *)&v15 init];
  v11 = v10;
  if (v10)
  {
    [(RTStateModelOneVisit *)v10 setLocation:locationCopy];
    [(RTStateModelOneVisit *)v11 setEntryExit_s:exitCopy];
    [(RTStateModelOneVisit *)v11 setNumOfDataPts:pts];
    uUID = [MEMORY[0x277CCAD78] UUID];
    identifier = v11->_identifier;
    v11->_identifier = uUID;
  }

  return v11;
}

- (RTStateModelOneVisit)initWithLatitude:(double)latitude longitude:(double)longitude uncertainty:(double)uncertainty entryTimestamp:(double)timestamp exitTimestamp:(double)exitTimestamp numOfDataPts:(int64_t)pts
{
  v25.receiver = self;
  v25.super_class = RTStateModelOneVisit;
  v14 = [(RTStateModelOneVisit *)&v25 init];
  if (v14)
  {
    v15 = [RTStateModelLocation alloc];
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceReferenceDate];
    v18 = [(RTStateModelLocation *)v15 initWithLat:latitude Lon:longitude Uncertainty:uncertainty confidence:-1.0 andTimestamp_s:v17];
    location = v14->_location;
    v14->_location = v18;

    v20 = [[RTStateModelEntryExit alloc] initWithEntry:timestamp exit:exitTimestamp];
    EntryExit_s = v14->_EntryExit_s;
    v14->_EntryExit_s = v20;

    v14->_numOfDataPts = pts;
    uUID = [MEMORY[0x277CCAD78] UUID];
    identifier = v14->_identifier;
    v14->_identifier = uUID;
  }

  return v14;
}

- (BOOL)isComplete
{
  entryExit_s = [(RTStateModelOneVisit *)self EntryExit_s];
  [entryExit_s entry_s];
  if (v4 <= -1.0)
  {
    v7 = 0;
  }

  else
  {
    entryExit_s2 = [(RTStateModelOneVisit *)self EntryExit_s];
    [entryExit_s2 exit_s];
    v7 = v6 > -1.0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  location = [(RTStateModelOneVisit *)self location];
  [coderCopy encodeObject:location forKey:@"location"];

  entryExit_s = [(RTStateModelOneVisit *)self EntryExit_s];
  [coderCopy encodeObject:entryExit_s forKey:@"EntryExit_s"];
}

- (RTStateModelOneVisit)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = RTStateModelOneVisit;
  v5 = [(RTStateModelOneVisit *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    [(RTStateModelOneVisit *)v5 setLocation:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EntryExit_s"];
    [(RTStateModelOneVisit *)v5 setEntryExit_s:v7];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  location = [(RTStateModelOneVisit *)self location];
  entryExit_s = [(RTStateModelOneVisit *)self EntryExit_s];
  v6 = [v3 stringWithFormat:@"%@, %@, numDataPts, %ld", location, entryExit_s, -[RTStateModelOneVisit numOfDataPts](self, "numOfDataPts")];

  return v6;
}

@end
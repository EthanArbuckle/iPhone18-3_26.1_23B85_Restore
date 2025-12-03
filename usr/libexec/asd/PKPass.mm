@interface PKPass
- (NSDate)anyDate;
- (NSDate)currentArrivalDate;
- (NSDate)currentBoardingDate;
- (NSDate)currentDepartureDate;
- (NSDate)originalArrivalDate;
- (NSDate)originalBoardingDate;
- (NSDate)originalDepartureDate;
- (NSString)boardingPassFirstName;
- (NSString)boardingPassLastName;
- (id)arrivalAirportLat:(int64_t)lat;
- (id)arrivalAirportLong:(int64_t)long;
- (id)departureAirportLat:(int64_t)lat;
- (id)departureAirportLong:(int64_t)long;
- (id)evaluateWithAttribute:(id)attribute expression:(id)expression;
@end

@implementation PKPass

- (id)arrivalAirportLat:(int64_t)lat
{
  selfCopy = self;
  v5 = PKPass.arrivalAirportLat(_:)(lat);

  return v5;
}

- (id)arrivalAirportLong:(int64_t)long
{
  selfCopy = self;
  v4 = PKPass.arrivalAirportLong(_:)();

  return v4;
}

- (id)departureAirportLat:(int64_t)lat
{
  selfCopy = self;
  v5 = PKPass.departureAirportLat(_:)(lat);

  return v5;
}

- (id)departureAirportLong:(int64_t)long
{
  selfCopy = self;
  v4 = PKPass.departureAirportLong(_:)();

  return v4;
}

- (NSDate)anyDate
{
  selfCopy = self;
  v3 = PKPass.anyDate.getter();

  return v3;
}

- (NSDate)currentArrivalDate
{
  selfCopy = self;
  v3 = PKPass.currentArrivalDate.getter();

  return v3;
}

- (NSDate)currentBoardingDate
{
  selfCopy = self;
  v3 = PKPass.currentBoardingDate.getter();

  return v3;
}

- (NSDate)currentDepartureDate
{
  selfCopy = self;
  v3 = PKPass.currentDepartureDate.getter();

  return v3;
}

- (NSDate)originalArrivalDate
{
  selfCopy = self;
  v3 = PKPass.originalArrivalDate.getter();

  return v3;
}

- (NSDate)originalBoardingDate
{
  selfCopy = self;
  v3 = PKPass.originalBoardingDate.getter();

  return v3;
}

- (NSDate)originalDepartureDate
{
  selfCopy = self;
  v3 = PKPass.originalDepartureDate.getter();

  return v3;
}

- (NSString)boardingPassFirstName
{
  selfCopy = self;
  v3 = PKPass.boardingPassFirstName.getter();

  return v3;
}

- (NSString)boardingPassLastName
{
  selfCopy = self;
  v3 = PKPass.boardingPassLastName.getter();

  return v3;
}

- (id)evaluateWithAttribute:(id)attribute expression:(id)expression
{
  attributeCopy = attribute;
  expressionCopy = expression;
  selfCopy = self;
  PKPass.evaluate(attribute:expression:)(attributeCopy, expressionCopy, v17);

  v9 = v18;
  if (v18)
  {
    v10 = sub_100044728(v17, v18);
    v11 = *(v9 - 8);
    v12 = *(v11 + 64);
    __chkstk_darwin(v10);
    v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14);
    v15 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v11 + 8))(v14, v9);
    sub_100044850(v17);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end
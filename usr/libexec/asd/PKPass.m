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
- (id)arrivalAirportLat:(int64_t)a3;
- (id)arrivalAirportLong:(int64_t)a3;
- (id)departureAirportLat:(int64_t)a3;
- (id)departureAirportLong:(int64_t)a3;
- (id)evaluateWithAttribute:(id)a3 expression:(id)a4;
@end

@implementation PKPass

- (id)arrivalAirportLat:(int64_t)a3
{
  v4 = self;
  v5 = PKPass.arrivalAirportLat(_:)(a3);

  return v5;
}

- (id)arrivalAirportLong:(int64_t)a3
{
  v3 = self;
  v4 = PKPass.arrivalAirportLong(_:)();

  return v4;
}

- (id)departureAirportLat:(int64_t)a3
{
  v4 = self;
  v5 = PKPass.departureAirportLat(_:)(a3);

  return v5;
}

- (id)departureAirportLong:(int64_t)a3
{
  v3 = self;
  v4 = PKPass.departureAirportLong(_:)();

  return v4;
}

- (NSDate)anyDate
{
  v2 = self;
  v3 = PKPass.anyDate.getter();

  return v3;
}

- (NSDate)currentArrivalDate
{
  v2 = self;
  v3 = PKPass.currentArrivalDate.getter();

  return v3;
}

- (NSDate)currentBoardingDate
{
  v2 = self;
  v3 = PKPass.currentBoardingDate.getter();

  return v3;
}

- (NSDate)currentDepartureDate
{
  v2 = self;
  v3 = PKPass.currentDepartureDate.getter();

  return v3;
}

- (NSDate)originalArrivalDate
{
  v2 = self;
  v3 = PKPass.originalArrivalDate.getter();

  return v3;
}

- (NSDate)originalBoardingDate
{
  v2 = self;
  v3 = PKPass.originalBoardingDate.getter();

  return v3;
}

- (NSDate)originalDepartureDate
{
  v2 = self;
  v3 = PKPass.originalDepartureDate.getter();

  return v3;
}

- (NSString)boardingPassFirstName
{
  v2 = self;
  v3 = PKPass.boardingPassFirstName.getter();

  return v3;
}

- (NSString)boardingPassLastName
{
  v2 = self;
  v3 = PKPass.boardingPassLastName.getter();

  return v3;
}

- (id)evaluateWithAttribute:(id)a3 expression:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  PKPass.evaluate(attribute:expression:)(v6, v7, v17);

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
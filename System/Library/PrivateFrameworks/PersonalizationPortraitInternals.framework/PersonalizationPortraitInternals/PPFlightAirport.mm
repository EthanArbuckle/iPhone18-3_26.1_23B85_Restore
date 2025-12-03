@interface PPFlightAirport
- (BOOL)isEqualToPPFlightAirport:(id)airport;
- (PPFlightAirport)initWithName:(id)name iataCode:(id)code role:(unsigned __int8)role;
@end

@implementation PPFlightAirport

- (BOOL)isEqualToPPFlightAirport:(id)airport
{
  airportCopy = airport;
  iataCode = [(PPFlightAirport *)self iataCode];
  iataCode2 = [airportCopy iataCode];

  LOBYTE(airportCopy) = [iataCode isEqualToString:iataCode2];
  return airportCopy;
}

- (PPFlightAirport)initWithName:(id)name iataCode:(id)code role:(unsigned __int8)role
{
  nameCopy = name;
  codeCopy = code;
  v14.receiver = self;
  v14.super_class = PPFlightAirport;
  v11 = [(PPFlightAirport *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_name, name);
    objc_storeStrong(&v12->_iataCode, code);
    v12->_role = role;
  }

  return v12;
}

@end
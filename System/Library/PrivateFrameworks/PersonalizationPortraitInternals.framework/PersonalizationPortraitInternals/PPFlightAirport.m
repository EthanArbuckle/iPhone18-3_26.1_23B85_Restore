@interface PPFlightAirport
- (BOOL)isEqualToPPFlightAirport:(id)a3;
- (PPFlightAirport)initWithName:(id)a3 iataCode:(id)a4 role:(unsigned __int8)a5;
@end

@implementation PPFlightAirport

- (BOOL)isEqualToPPFlightAirport:(id)a3
{
  v4 = a3;
  v5 = [(PPFlightAirport *)self iataCode];
  v6 = [v4 iataCode];

  LOBYTE(v4) = [v5 isEqualToString:v6];
  return v4;
}

- (PPFlightAirport)initWithName:(id)a3 iataCode:(id)a4 role:(unsigned __int8)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = PPFlightAirport;
  v11 = [(PPFlightAirport *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_name, a3);
    objc_storeStrong(&v12->_iataCode, a4);
    v12->_role = a5;
  }

  return v12;
}

@end
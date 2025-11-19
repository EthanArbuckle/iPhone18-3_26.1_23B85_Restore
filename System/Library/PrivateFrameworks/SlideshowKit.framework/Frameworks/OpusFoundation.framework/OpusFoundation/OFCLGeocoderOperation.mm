@interface OFCLGeocoderOperation
+ (id)operationWithLocation:(id)a3;
+ (id)operationWithLocation:(id)a3 accuracy:(double)a4;
- (OFCLGeocoderOperation)initWithLocation:(id)a3 accuracy:(double)a4;
- (unint64_t)launchOperation;
- (void)cancelOperation;
- (void)cleanupOperation;
- (void)dealloc;
- (void)finishOperation;
@end

@implementation OFCLGeocoderOperation

- (OFCLGeocoderOperation)initWithLocation:(id)a3 accuracy:(double)a4
{
  v8.receiver = self;
  v8.super_class = OFCLGeocoderOperation;
  v6 = [(OFNSOperation *)&v8 init];
  if (v6)
  {
    v6->_geocoder = objc_alloc_init(MEMORY[0x277CBFBE8]);
    v6->_location = a3;
    v6->_accuracy = a4;
    v6->_placemarks = 0;
  }

  return v6;
}

- (void)dealloc
{
  geocoder = self->_geocoder;
  if (geocoder)
  {

    self->_geocoder = 0;
  }

  location = self->_location;
  if (location)
  {

    self->_location = 0;
  }

  placemarks = self->_placemarks;
  if (placemarks)
  {

    self->_placemarks = 0;
  }

  v6.receiver = self;
  v6.super_class = OFCLGeocoderOperation;
  [(OFNSOperation *)&v6 dealloc];
}

- (unint64_t)launchOperation
{
  v13.receiver = self;
  v13.super_class = OFCLGeocoderOperation;
  if ([(OFNSOperation *)&v13 launchOperation]== 1)
  {
    v3 = +[OFLocationCache defaultCache];
    [(CLLocation *)self->_location coordinate];
    v4 = [v3 placemarksForLocationCoordinate:?];
    v5 = v4;
    if (!v4 || ![v4 count])
    {
      accuracy = self->_accuracy;
      v7 = accuracy == 0.0 || accuracy == *MEMORY[0x277CE4208];
      if (!v7 && accuracy != *MEMORY[0x277CE4210])
      {
        [(CLLocation *)self->_location coordinate];
        v5 = [v3 placemarksForLocationCoordinate:? andAccuracy:?];
      }

      if (!v5 || ![v5 count])
      {
        geocoder = self->_geocoder;
        location = self->_location;
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __40__OFCLGeocoderOperation_launchOperation__block_invoke;
        v12[3] = &unk_279C89FE0;
        v12[4] = self;
        v12[5] = v3;
        [(CLGeocoder *)geocoder reverseGeocodeLocation:location completionHandler:v12];
        return 1;
      }
    }

    [(OFCLGeocoderOperation *)self setPlacemarks:v5];
    [(OFNSOperation *)self finish];
  }

  return 0;
}

uint64_t __40__OFCLGeocoderOperation_launchOperation__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    [v4 setError:?];
  }

  else
  {
    [v4 setPlacemarks:a2];
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(v5 + 416);
    [*(v5 + 400) coordinate];
    [v6 setPlacemarks:v7 forLocationCoordinate:?];
  }

  v8 = *(a1 + 32);

  return [v8 finish];
}

- (void)cancelOperation
{
  v3.receiver = self;
  v3.super_class = OFCLGeocoderOperation;
  [(OFNSOperation *)&v3 cancelOperation];
  [(CLGeocoder *)self->_geocoder cancelGeocode];
}

- (void)finishOperation
{
  v2.receiver = self;
  v2.super_class = OFCLGeocoderOperation;
  [(OFNSOperation *)&v2 finishOperation];
}

- (void)cleanupOperation
{
  v6.receiver = self;
  v6.super_class = OFCLGeocoderOperation;
  [(OFNSOperation *)&v6 cleanupOperation];
  geocoder = self->_geocoder;
  if (geocoder)
  {

    self->_geocoder = 0;
  }

  location = self->_location;
  if (location)
  {

    self->_location = 0;
  }

  placemarks = self->_placemarks;
  if (placemarks)
  {

    self->_placemarks = 0;
  }
}

+ (id)operationWithLocation:(id)a3
{
  v4 = [OFCLGeocoderOperation alloc];
  v5 = [(OFCLGeocoderOperation *)v4 initWithLocation:a3 accuracy:*MEMORY[0x277CE4208]];

  return v5;
}

+ (id)operationWithLocation:(id)a3 accuracy:(double)a4
{
  v4 = [[OFCLGeocoderOperation alloc] initWithLocation:a3 accuracy:a4];

  return v4;
}

@end
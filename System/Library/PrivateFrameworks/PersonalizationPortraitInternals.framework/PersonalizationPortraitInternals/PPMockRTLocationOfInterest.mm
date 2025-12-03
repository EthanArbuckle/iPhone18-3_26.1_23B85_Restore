@interface PPMockRTLocationOfInterest
+ (id)mockLocationOfInterestWithSubThoroughfare:(id)thoroughfare thoroughfare:(id)a4 subLocality:(id)locality locality:(id)a6 administrativeArea:(id)area administrativeAreaCode:(id)code postalCode:(id)postalCode country:(id)self0 countryCode:(id)self1 longitude:(double)self2 latitude:(double)self3 visits:(id)self4;
@end

@implementation PPMockRTLocationOfInterest

+ (id)mockLocationOfInterestWithSubThoroughfare:(id)thoroughfare thoroughfare:(id)a4 subLocality:(id)locality locality:(id)a6 administrativeArea:(id)area administrativeAreaCode:(id)code postalCode:(id)postalCode country:(id)self0 countryCode:(id)self1 longitude:(double)self2 latitude:(double)self3 visits:(id)self4
{
  visitsCopy = visits;
  countryCodeCopy = countryCode;
  countryCopy = country;
  postalCodeCopy = postalCode;
  codeCopy = code;
  areaCopy = area;
  v26 = a6;
  localityCopy = locality;
  v28 = a4;
  thoroughfareCopy = thoroughfare;
  v30 = objc_opt_new();
  [v30 setSubThoroughfare:thoroughfareCopy];

  [v30 setThoroughfare:v28];
  [v30 setSubLocality:localityCopy];

  [v30 setLocality:v26];
  [v30 setAdministrativeArea:areaCopy];

  [v30 setAdministrativeAreaCode:codeCopy];
  [v30 setPostalCode:postalCodeCopy];

  [v30 setCountry:countryCopy];
  [v30 setCountryCode:countryCodeCopy];

  v31 = objc_opt_new();
  [v31 setLatitude:latitude];
  [v31 setLongitude:longitude];
  v32 = objc_opt_new();
  [v32 setAddress:v30];
  [v32 setLocation:v31];
  v33 = objc_opt_new();
  [v33 setMapItem:v32];
  [v33 setVisits:visitsCopy];

  return v33;
}

@end
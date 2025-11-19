@interface PPMockRTLocationOfInterest
+ (id)mockLocationOfInterestWithSubThoroughfare:(id)a3 thoroughfare:(id)a4 subLocality:(id)a5 locality:(id)a6 administrativeArea:(id)a7 administrativeAreaCode:(id)a8 postalCode:(id)a9 country:(id)a10 countryCode:(id)a11 longitude:(double)a12 latitude:(double)a13 visits:(id)a14;
@end

@implementation PPMockRTLocationOfInterest

+ (id)mockLocationOfInterestWithSubThoroughfare:(id)a3 thoroughfare:(id)a4 subLocality:(id)a5 locality:(id)a6 administrativeArea:(id)a7 administrativeAreaCode:(id)a8 postalCode:(id)a9 country:(id)a10 countryCode:(id)a11 longitude:(double)a12 latitude:(double)a13 visits:(id)a14
{
  v36 = a14;
  v35 = a11;
  v22 = a10;
  v23 = a9;
  v24 = a8;
  v25 = a7;
  v26 = a6;
  v27 = a5;
  v28 = a4;
  v29 = a3;
  v30 = objc_opt_new();
  [v30 setSubThoroughfare:v29];

  [v30 setThoroughfare:v28];
  [v30 setSubLocality:v27];

  [v30 setLocality:v26];
  [v30 setAdministrativeArea:v25];

  [v30 setAdministrativeAreaCode:v24];
  [v30 setPostalCode:v23];

  [v30 setCountry:v22];
  [v30 setCountryCode:v35];

  v31 = objc_opt_new();
  [v31 setLatitude:a13];
  [v31 setLongitude:a12];
  v32 = objc_opt_new();
  [v32 setAddress:v30];
  [v32 setLocation:v31];
  v33 = objc_opt_new();
  [v33 setMapItem:v32];
  [v33 setVisits:v36];

  return v33;
}

@end
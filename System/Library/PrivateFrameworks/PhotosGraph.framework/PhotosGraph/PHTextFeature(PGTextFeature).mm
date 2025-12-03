@interface PHTextFeature(PGTextFeature)
+ (id)pg_textFeatureForFeature:()PGTextFeature;
@end

@implementation PHTextFeature(PGTextFeature)

+ (id)pg_textFeatureForFeature:()PGTextFeature
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    string = [v3 string];

    if (string)
    {
      type = [v4 type];
      switch(type)
      {
        case 0:
        case 1:
        case 2:
        case 7:
        case 11:
        case 12:
        case 14:
        case 16:
        case 23:
        case 27:
        case 28:
        case 29:
        case 30:
        case 31:
        case 32:
        case 33:
        case 34:
        case 35:
        case 37:
          v7 = +[PGLogging sharedLogging];
          loggingConnection = [v7 loggingConnection];

          if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
          {
            v9 = +[PGFeature stringForFeatureType:](PGFeature, "stringForFeatureType:", [v4 type]);
            v18 = 138412290;
            v19 = v9;
            _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Cannot create a PHTextFeature from PGFeature type %@", &v18, 0xCu);
          }

          goto LABEL_7;
        case 3:
          type = 1;
          break;
        case 4:
        case 5:
        case 6:
          break;
        case 8:
        case 20:
          type = 7;
          break;
        case 9:
          type = 10;
          break;
        case 10:
          type = 9;
          break;
        case 13:
          type = 12;
          break;
        case 15:
          type = 2;
          break;
        case 17:
          type = 14;
          break;
        case 18:
          type = 11;
          break;
        case 19:
          type = 3;
          break;
        case 21:
          type = 15;
          break;
        case 22:
          type = 16;
          break;
        case 24:
          type = 17;
          break;
        case 25:
          type = 18;
          break;
        case 26:
          type = 19;
          break;
        case 36:
          type = 13;
          break;
        case 38:
          type = 20;
          break;
        case 39:
          type = 21;
          break;
        default:
          type = 0;
          break;
      }

      v10 = MEMORY[0x277CD99F0];
      string2 = [v4 string];
      [v4 weight];
      v13 = v12;
      origin = [v4 origin];
      *&v15 = v13;
      string = [v10 textFeatureWithType:type string:string2 weight:origin origin:v15];
    }
  }

  else
  {
LABEL_7:
    string = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return string;
}

@end
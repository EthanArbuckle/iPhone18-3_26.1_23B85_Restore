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
    v5 = [v3 string];

    if (v5)
    {
      v6 = [v4 type];
      switch(v6)
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
          v8 = [v7 loggingConnection];

          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            v9 = +[PGFeature stringForFeatureType:](PGFeature, "stringForFeatureType:", [v4 type]);
            v18 = 138412290;
            v19 = v9;
            _os_log_error_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_ERROR, "Cannot create a PHTextFeature from PGFeature type %@", &v18, 0xCu);
          }

          goto LABEL_7;
        case 3:
          v6 = 1;
          break;
        case 4:
        case 5:
        case 6:
          break;
        case 8:
        case 20:
          v6 = 7;
          break;
        case 9:
          v6 = 10;
          break;
        case 10:
          v6 = 9;
          break;
        case 13:
          v6 = 12;
          break;
        case 15:
          v6 = 2;
          break;
        case 17:
          v6 = 14;
          break;
        case 18:
          v6 = 11;
          break;
        case 19:
          v6 = 3;
          break;
        case 21:
          v6 = 15;
          break;
        case 22:
          v6 = 16;
          break;
        case 24:
          v6 = 17;
          break;
        case 25:
          v6 = 18;
          break;
        case 26:
          v6 = 19;
          break;
        case 36:
          v6 = 13;
          break;
        case 38:
          v6 = 20;
          break;
        case 39:
          v6 = 21;
          break;
        default:
          v6 = 0;
          break;
      }

      v10 = MEMORY[0x277CD99F0];
      v11 = [v4 string];
      [v4 weight];
      v13 = v12;
      v14 = [v4 origin];
      *&v15 = v13;
      v5 = [v10 textFeatureWithType:v6 string:v11 weight:v14 origin:v15];
    }
  }

  else
  {
LABEL_7:
    v5 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v5;
}

@end
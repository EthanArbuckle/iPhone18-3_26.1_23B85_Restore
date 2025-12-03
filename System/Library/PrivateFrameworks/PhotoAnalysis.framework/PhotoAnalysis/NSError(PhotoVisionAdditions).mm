@interface NSError(PhotoVisionAdditions)
+ (id)errorForPhotoVisionErrorCode:()PhotoVisionAdditions localizedDescription:;
+ (id)errorForPhotoVisionErrorCode:()PhotoVisionAdditions localizedDescription:underlyingError:;
+ (id)errorForPhotoVisionInvalidNilParameterNamed:()PhotoVisionAdditions;
+ (id)errorForPhotoVisionInvalidParameterNamed:()PhotoVisionAdditions integerValue:;
+ (id)errorForPhotoVisionInvalidParameterNamed:()PhotoVisionAdditions realValue:;
+ (id)errorForPhotoVisionInvalidParameterNamed:()PhotoVisionAdditions value:;
+ (id)errorForPhotoVisionInvalidParameterWithLocalizedDescription:()PhotoVisionAdditions;
+ (id)errorForPhotoVisionStorageErrorWithLocalizedDescription:()PhotoVisionAdditions underlyingError:;
+ (id)errorForPhotoVisionUnexpectedCondition:()PhotoVisionAdditions;
+ (id)errorForPhotoVisionVisionKitErrorWithLocalizedDescription:()PhotoVisionAdditions underlyingError:;
@end

@implementation NSError(PhotoVisionAdditions)

+ (id)errorForPhotoVisionVisionKitErrorWithLocalizedDescription:()PhotoVisionAdditions underlyingError:
{
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277CCA450], a4, *MEMORY[0x277CCA7E8], 0}];
  v6 = [self errorForPhotoVisionStorageErrorWithUserInfo:v5];

  return v6;
}

+ (id)errorForPhotoVisionStorageErrorWithLocalizedDescription:()PhotoVisionAdditions underlyingError:
{
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277CCA450], a4, *MEMORY[0x277CCA7E8], 0}];
  v6 = [self errorForPhotoVisionStorageErrorWithUserInfo:v5];

  return v6;
}

+ (id)errorForPhotoVisionInvalidParameterWithLocalizedDescription:()PhotoVisionAdditions
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = *MEMORY[0x277CCA450];
  v10[0] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = [self errorForPhotoVisionErrorCode:-1002 userInfo:v6];

  return v7;
}

+ (id)errorForPhotoVisionInvalidParameterNamed:()PhotoVisionAdditions realValue:
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithDouble:a2];
  v9 = [self errorForPhotoVisionInvalidParameterNamed:v7 value:v8];

  return v9;
}

+ (id)errorForPhotoVisionInvalidParameterNamed:()PhotoVisionAdditions integerValue:
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithInteger:a4];
  v9 = [self errorForPhotoVisionInvalidParameterNamed:v7 value:v8];

  return v9;
}

+ (id)errorForPhotoVisionInvalidParameterNamed:()PhotoVisionAdditions value:
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid value of %@ for parameter %@", a4, a3];
  v6 = [self errorForPhotoVisionInvalidParameterWithLocalizedDescription:v5];

  return v6;
}

+ (id)errorForPhotoVisionInvalidNilParameterNamed:()PhotoVisionAdditions
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"The parameter %@ cannot be nil", a3];
  v5 = [self errorForPhotoVisionInvalidParameterWithLocalizedDescription:v4];

  return v5;
}

+ (id)errorForPhotoVisionUnexpectedCondition:()PhotoVisionAdditions
{
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277CCA450], 0}];
  v3 = [self errorForPhotoVisionErrorCode:-1001 userInfo:v2];

  return v3;
}

+ (id)errorForPhotoVisionErrorCode:()PhotoVisionAdditions localizedDescription:underlyingError:
{
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{a4, *MEMORY[0x277CCA450], a5, *MEMORY[0x277CCA7E8], 0}];
  v8 = [self errorWithDomain:@"PVErrorDomainPhotoVision" code:a3 userInfo:v7];

  return v8;
}

+ (id)errorForPhotoVisionErrorCode:()PhotoVisionAdditions localizedDescription:
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = *MEMORY[0x277CCA450];
  v12[0] = a4;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a4;
  v8 = [v6 dictionaryWithObjects:v12 forKeys:&v11 count:1];

  v9 = [self errorWithDomain:@"PVErrorDomainPhotoVision" code:a3 userInfo:v8];

  return v9;
}

@end
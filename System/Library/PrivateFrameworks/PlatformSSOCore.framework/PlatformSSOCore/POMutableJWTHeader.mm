@interface POMutableJWTHeader
- (void)addCustomClaims:(id)claims;
- (void)addEphemeralPublicKey:(__SecKey *)key;
- (void)setAlg:(id)alg;
- (void)setApu:(id)apu;
- (void)setApv:(id)apv;
- (void)setCty:(id)cty;
- (void)setEnc:(id)enc;
- (void)setEpk:(id)epk;
- (void)setKid:(id)kid;
- (void)setP2c:(id)p2c;
- (void)setP2s:(id)p2s;
- (void)setTyp:(id)typ;
- (void)setX5c:(id)x5c;
- (void)setX5t:(id)x5t;
@end

@implementation POMutableJWTHeader

- (void)setTyp:(id)typ
{
  typCopy = typ;
  data = [(POJWTHeader *)self data];
  [data setObject:typCopy forKeyedSubscript:@"typ"];
}

- (void)setCty:(id)cty
{
  ctyCopy = cty;
  data = [(POJWTHeader *)self data];
  [data setObject:ctyCopy forKeyedSubscript:@"cty"];
}

- (void)setAlg:(id)alg
{
  algCopy = alg;
  data = [(POJWTHeader *)self data];
  [data setObject:algCopy forKeyedSubscript:@"alg"];
}

- (void)setX5c:(id)x5c
{
  x5cCopy = x5c;
  data = [(POJWTHeader *)self data];
  [data setObject:x5cCopy forKeyedSubscript:@"x5c"];
}

- (void)setX5t:(id)x5t
{
  x5tCopy = x5t;
  data = [(POJWTHeader *)self data];
  [data setObject:x5tCopy forKeyedSubscript:@"x5t"];
}

- (void)setKid:(id)kid
{
  kidCopy = kid;
  data = [(POJWTHeader *)self data];
  [data setObject:kidCopy forKeyedSubscript:@"kid"];
}

- (void)setEnc:(id)enc
{
  encCopy = enc;
  data = [(POJWTHeader *)self data];
  [data setObject:encCopy forKeyedSubscript:@"enc"];
}

- (void)setP2s:(id)p2s
{
  p2sCopy = p2s;
  data = [(POJWTHeader *)self data];
  [data setObject:p2sCopy forKeyedSubscript:@"p2s"];
}

- (void)setP2c:(id)p2c
{
  p2cCopy = p2c;
  data = [(POJWTHeader *)self data];
  [data setObject:p2cCopy forKeyedSubscript:@"p2c"];
}

- (void)setEpk:(id)epk
{
  epkCopy = epk;
  data = [(POJWTHeader *)self data];
  [data setObject:epkCopy forKeyedSubscript:@"epk"];
}

- (void)setApu:(id)apu
{
  apuCopy = apu;
  data = [(POJWTHeader *)self data];
  [data setObject:apuCopy forKeyedSubscript:@"apu"];
}

- (void)setApv:(id)apv
{
  apvCopy = apv;
  data = [(POJWTHeader *)self data];
  [data setObject:apvCopy forKeyedSubscript:@"apv"];
}

- (void)addCustomClaims:(id)claims
{
  claimsCopy = claims;
  data = [(POJWTHeader *)self data];
  [data addEntriesFromDictionary:claimsCopy];
}

- (void)addEphemeralPublicKey:(__SecKey *)key
{
  v5 = SecKeyCopyAttributes(key);
  v6 = [(__CFDictionary *)v5 objectForKeyedSubscript:*MEMORY[0x277CDBFE0]];
  v7 = [(__CFDictionary *)v5 objectForKeyedSubscript:*MEMORY[0x277CDC028]];
  if ([v6 isEqualToString:*MEMORY[0x277CDC000]] && ((objc_msgSend(v7, "isEqualToString:", *MEMORY[0x277CDC030]) & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", *MEMORY[0x277CDC040]) & 1) != 0))
  {
    error = 0;
    v8 = SecKeyCopyExternalRepresentation(key, &error);
    v9 = v8;
    if (error)
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __44__POMutableJWTHeader_addEphemeralPublicKey___block_invoke_100;
      v18[3] = &__block_descriptor_40_e14___NSError_8__0l;
      v18[4] = error;
      v10 = __44__POMutableJWTHeader_addEphemeralPublicKey___block_invoke_100(v18);
    }

    else if ([(__CFData *)v8 length]== 65)
    {
      v12 = [(__CFData *)v9 subdataWithRange:1, 32];
      v13 = [(__CFData *)v9 subdataWithRange:33, 32];
      v14 = objc_opt_new();
      [v14 setObject:@"EC" forKeyedSubscript:@"kty"];
      [v14 setObject:@"P-256" forKeyedSubscript:@"crv"];
      psso_base64URLEncodedString = [v12 psso_base64URLEncodedString];
      [v14 setObject:psso_base64URLEncodedString forKeyedSubscript:@"x"];

      psso_base64URLEncodedString2 = [v13 psso_base64URLEncodedString];
      [v14 setObject:psso_base64URLEncodedString2 forKeyedSubscript:@"y"];

      [(POMutableJWTHeader *)self setEpk:v14];
    }

    else
    {
      v17 = __44__POMutableJWTHeader_addEphemeralPublicKey___block_invoke_105();
    }
  }

  else
  {
    v11 = __44__POMutableJWTHeader_addEphemeralPublicKey___block_invoke();
  }
}

id __44__POMutableJWTHeader_addEphemeralPublicKey___block_invoke()
{
  v0 = [POError errorWithCode:-1008 description:@"Invalid epk type."];
  v1 = PO_LOG_POJWTHeader();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __44__POMutableJWTHeader_addEphemeralPublicKey___block_invoke_100(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [POError errorWithCode:-1001 underlyingError:v1 description:@"Error with epk external representation"];

  v3 = PO_LOG_POJWTHeader();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v2;
}

id __44__POMutableJWTHeader_addEphemeralPublicKey___block_invoke_105()
{
  v0 = [POError errorWithCode:-1008 description:@"Error with dataRepresentation length for epk."];
  v1 = PO_LOG_POJWTHeader();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

@end
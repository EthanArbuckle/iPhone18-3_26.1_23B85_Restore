@interface ACMExternalEnvironmentPreferences
+ (id)externalEnvironmentSpecifications;
- (id)defaultPublicKeyString;
- (id)environmentSpecificationForRealm:(id)realm;
- (id)myAppleIDURL;
- (id)serverAttemptsDelays;
- (id)serverHosts;
@end

@implementation ACMExternalEnvironmentPreferences

+ (id)externalEnvironmentSpecifications
{
  v19[3] = *MEMORY[0x29EDCA608];
  v18[0] = @"APPLECONNECT.APPLE.COM";
  v16 = @"ACMEnvironmentServerConfigKey";
  v13 = @"mobile.apple.com/acmob";
  v14[0] = @"ACMEnvironmentHostsKey";
  v15[0] = [MEMORY[0x29EDB8D80] arrayWithObjects:&v13 count:1];
  v15[1] = &unk_2A1EE30B0;
  v14[1] = @"ACMEnvironmentServerAttemptsDelayKey";
  v14[2] = @"ACMEnvironmentMyAppleIDURLKey";
  v15[2] = @"https://appleid.apple.com";
  v17 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v19[0] = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v18[1] = @"APPLECONNECT-UAT.APPLE.COM";
  v11 = @"ACMEnvironmentServerConfigKey";
  v8 = @"mobile-uat.corp.apple.com/acmob";
  v9[0] = @"ACMEnvironmentHostsKey";
  v10[0] = [MEMORY[0x29EDB8D80] arrayWithObjects:&v8 count:1];
  v10[1] = &unk_2A1EE30C8;
  v9[1] = @"ACMEnvironmentServerAttemptsDelayKey";
  v9[2] = @"ACMEnvironmentMyAppleIDURLKey";
  v10[2] = @"https://appleid-ut.corp.apple.com";
  v12 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v10 forKeys:v9 count:3];
  v19[1] = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v18[2] = @"AC-AT.APPLE.COM";
  v6 = @"ACMEnvironmentServerConfigKey";
  v3 = @"idmswt.corp.apple.com/acmob";
  v4[0] = @"ACMEnvironmentHostsKey";
  v5[0] = [MEMORY[0x29EDB8D80] arrayWithObjects:&v3 count:1];
  v5[1] = &unk_2A1EE30E0;
  v4[1] = @"ACMEnvironmentServerAttemptsDelayKey";
  v4[2] = @"ACMEnvironmentMyAppleIDURLKey";
  v5[2] = @"https://appleid-ut.corp.apple.com";
  v7 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v5 forKeys:v4 count:3];
  v19[2] = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
}

- (id)environmentSpecificationForRealm:(id)realm
{
  v6.receiver = self;
  v6.super_class = ACMExternalEnvironmentPreferences;
  v4 = [MEMORY[0x29EDB8E00] dictionaryWithDictionary:{-[ACMEnvironmentPreferences environmentSpecificationForRealm:](&v6, sel_environmentSpecificationForRealm_)}];
  [v4 addEntriesFromDictionary:{objc_msgSend(+[ACMExternalEnvironmentPreferences externalEnvironmentSpecifications](ACMExternalEnvironmentPreferences, "externalEnvironmentSpecifications"), "objectForKey:", realm)}];
  return [v4 copy];
}

- (id)defaultPublicKeyString
{
  if ([(NSString *)[(ACMEnvironmentPreferences *)self realm] isEqualToString:@"APPLECONNECT.APPLE.COM"])
  {
    return @"MIIEPzCCAyegAwIBAgIIaPIH4VUAsEMwDQYJKoZIhvcNAQEFBQAweDEoMCYGA1UEAwwfQXBwbGUgSVNUIFNlcnZlciBDZXJ0aWZpY2F0ZSBDQTEqMCgGA1UECwwhQXBwbGUgSVNUIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MRMwEQYDVQQKDApBcHBsZSBJbmMuMQswCQYDVQQGEwJVUzAeFw0xMDEwMTQxODM5MDJaFw0xMTA3MDgyMTU5NTlaMH8xLjAsBgkqhkiG9w0BCQEWH3NhY2ktY2VydC1hZG1pbkBncm91cC5hcHBsZS5jb20xHTAbBgNVBAMMFGFjbW9iZTAuZHMuYXBwbGUuY29tMQwwCgYDVQQLDANFVFMxEzARBgNVBAoMCkFwcGxlIEluYy4xCzAJBgNVBAYTAlVTMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA40YO0fcFrOe5iZPKn9jDKgmSscH+r0DyJHYnsvpv7N5kEccrpwK1z37dmfXV4bAzFZTp/rKQ6u3aPQ3E29a6cchNF/oZEcyq9XW8RP27j/YkWkw9r11C2cAv31R+AkAdXpxAMYU7+Xdp8g0+EWYq5o+ZYRxvzGOhZofNos2TzvF6TaOdEQ163pmhQIz6H6swDW7CcAhZrsKpD/kaPUhq33ml7QnQqM+Ut+TpGjtl5Z5QOGPxR0DqLkFKm9H9ievmXfQop5apNUkwVBTr/lTxgrwzHg0io7mVc5Mw/vAgKEARzLQmxiHx2QphcwFuuIznt99Wa5lyhkb4sB506FlT7wIDAQABo4HFMIHCMAwGA1UdEwEB/wQCMAAwEwYDVR0lBAwwCgYIKwYBBQUHAwEwHwYDVR0jBBgwFoAU3fq5NsxRQqSfMq047lK3j59EBLgwDgYDVR0PAQH/BAQDAgWgMB0GA1UdDgQWBBSOKsUHW8v1jeoHpHJJ2dhYIeVo8zA8BggrBgEFBQcBAQQwMC4wLAYIKwYBBQUHMAGGIGh0dHA6Ly9vY3NwLmFwcGxlLmNvbS9vY3NwLWlzdDAzMA8GA1UdEQQIMAaHBBEisCEwDQYJKoZIhvcNAQEFBQADggEBAHPKPxIXsy4MGYDCq+7VDkaG/dwF/e5Csg5tg9rGhJAoOLoGUtMM62wnFelc0Ty3sQmE9yh5V4SNCSHt9bdL+hNakagzThfJdajK2vNAvoPiGwz5YH/brxLj7ovN/LPiLkP5oK/nSTwatty7h0PPgX+w76NbUgqwQwsyq4isnwhCpNykoZ4QkA/469meqShyeUivWagd+kv4JhPsR8Mu3DGbuQCzLYVRvaExT7Qw2wrvLUedi3t2GOWpBL/sXqeyM9SYeKfzaSYqvs3UIFK2gEDXHw7xjO8eaEvtIiMzLqtJ4f0w3/cKPVRdd4+gkVAfgEwG7SyMe7/LwJdfk6wTzDs=";
  }

  else
  {
    return @"MIIEWjCCA0KgAwIBAgIJAPgWFS3crKvxMA0GCSqGSIb3DQEBBAUAMHsxCzAJBgNVBAYTAlVTMQswCQYDVQQIEwJDQTELMAkGA1UEBxMCU0MxDjAMBgNVBAoTBUFwcGxlMQwwCgYDVQQLEwNFVFMxEzARBgNVBAMTCmdlc3R1cmUgRFMxHzAdBgkqhkiG9w0BCQEWEHNlbHZhc0BhcHBsZS5jb20wHhcNMTAwMzAyMjIzNjI5WhcNMTMwMzAxMjIzNjI5WjB7MQswCQYDVQQGEwJVUzELMAkGA1UECBMCQ0ExCzAJBgNVBAcTAlNDMQ4wDAYDVQQKEwVBcHBsZTEMMAoGA1UECxMDRVRTMRMwEQYDVQQDEwpnZXN0dXJlIERTMR8wHQYJKoZIhvcNAQkBFhBzZWx2YXNAYXBwbGUuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAsmUJxig6EIL9ZxY9hcgV5DnPkAdbC+/1XNtxBUTf5z8BmlJLDpaGXNEh5JfA2zeIhv0oRwUKADyewn8+1J99jyNYNHouwfS8bRKHPmvHmCvMMhkvo+F4STcR7/H+IueXToSQM/nCdhr2jv0Yfgkzdkz6C9nMtSQ3Yscxhwb9PQgOd4Fo3vXO7dHpsB0BP7IhFINaSHRqUpwpjaCRviuHw+v5FkacZ0hq0GffLb9NVCtSSeCgdOV/Gy6LNww9V0Z9KGlvK7anl9mq5sLtae9wr/X2q9m2EDpheDwqvLrbitHzO0LUdq/V6zVbLEguolN+TSxs/Xal0J/lJHtkuPQ9yQIDAQABo4HgMIHdMB0GA1UdDgQWBBRuNV6LVs61/zmSf+vXc4gIfogZqTCBrQYDVR0jBIGlMIGigBRuNV6LVs61/zmSf+vXc4gIfogZqaF/pH0wezELMAkGA1UEBhMCVVMxCzAJBgNVBAgTAkNBMQswCQYDVQQHEwJTQzEOMAwGA1UEChMFQXBwbGUxDDAKBgNVBAsTA0VUUzETMBEGA1UEAxMKZ2VzdHVyZSBEUzEfMB0GCSqGSIb3DQEJARYQc2VsdmFzQGFwcGxlLmNvbYIJAPgWFS3crKvxMAwGA1UdEwQFMAMBAf8wDQYJKoZIhvcNAQEEBQADggEBACS2isjE1UpzjbW2b3DuMU5bHpIPe6gceKiPRZnyBpRtAhvahwzZ2t56cKpi3i6yISoZRIzG6Zg+v6YDyHbJH3xpkVw4Rcpfx2yUX4UAmoS+CSQxT/Czlm+Gcaf+7NZKQDaFCScQkIQxi3Ie/9AgVOQzD/esuGTEwbVO5n6USuSna08ANbwk4YYjAMHFyilEDBjtrGKB9spS8jKCug75C0DSWLD3IO59jDXnkDlglfG+p+LUVC9yRqIYCI662hsdvhITAGZWWFYrevOWXue0gjt6hIe4m63cBEgXgf9g66ePB6ZkRWf4dCSQKXP7XidMRsh2oM/c67PYZ4rebRlhTb0=";
  }
}

- (id)serverHosts
{
  v2 = [(NSDictionary *)[(ACMEnvironmentPreferences *)self environmentSpecification] objectForKeyedSubscript:@"ACMEnvironmentServerConfigKey"];

  return [v2 objectForKeyedSubscript:@"ACMEnvironmentHostsKey"];
}

- (id)serverAttemptsDelays
{
  v2 = [(NSDictionary *)[(ACMEnvironmentPreferences *)self environmentSpecification] objectForKeyedSubscript:@"ACMEnvironmentServerConfigKey"];

  return [v2 objectForKeyedSubscript:@"ACMEnvironmentServerAttemptsDelayKey"];
}

- (id)myAppleIDURL
{
  v2 = [(NSDictionary *)[(ACMEnvironmentPreferences *)self environmentSpecification] objectForKeyedSubscript:@"ACMEnvironmentServerConfigKey"];

  return [v2 objectForKeyedSubscript:@"ACMEnvironmentMyAppleIDURLKey"];
}

@end
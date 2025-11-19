@interface AXKonaConfiguration
- (AXKonaConfiguration)initWithDylib:(id)a3 romanizerDylib:(id)a4 encoding:(unint64_t)a5 dialectCode:(id)a6 dialect:(int)a7;
- (NSString)iniString;
@end

@implementation AXKonaConfiguration

- (AXKonaConfiguration)initWithDylib:(id)a3 romanizerDylib:(id)a4 encoding:(unint64_t)a5 dialectCode:(id)a6 dialect:(int)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v19.receiver = self;
  v19.super_class = AXKonaConfiguration;
  v16 = [(AXKonaConfiguration *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_dylib, a3);
    objc_storeStrong(&v17->_dialectCode, a6);
    v17->_eciDialect = a7;
    objc_storeStrong(&v17->_romanizerDylib, a4);
    v17->_encoding = a5;
  }

  return v17;
}

- (NSString)iniString
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 bundlePath];

  v5 = [(AXKonaConfiguration *)self romanizerDylib];

  v6 = MEMORY[0x277CCACA8];
  [(AXKonaConfiguration *)self dialectCode];
  if (v5)
    v7 = {;
    v8 = [(AXKonaConfiguration *)self dylib];
    v9 = [(AXKonaConfiguration *)self romanizerDylib];
    v10 = [v6 stringWithFormat:@"[%@]\nPath=%@%@/%@.dylib\nPath_Rom=%@%@/%@.dylib\nVersion=5.0\nVoice1=0 50 65 30 0 0 50 92\nPhoneme0=0 0 0 0 0 0 0 0 0 0 0 0 0 0 0\n\n", v7, v4, @"/Frameworks", v8, v4, @"/Frameworks", v9];
  }

  else
    v7 = {;
    v8 = [(AXKonaConfiguration *)self dylib];
    v10 = [v6 stringWithFormat:@"[%@]\nPath=%@%@/%@.dylib\nVersion=5.0\nVoice1=0 50 65 30 0 0 50 92\nPhoneme0=0 0 0 0 0 0 0 0 0 0 0 0 0 0 0\n\n", v7, v4, @"/Frameworks", v8];
  }

  return v10;
}

@end
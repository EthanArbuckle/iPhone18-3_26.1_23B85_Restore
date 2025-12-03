@interface AXKonaConfiguration
- (AXKonaConfiguration)initWithDylib:(id)dylib romanizerDylib:(id)romanizerDylib encoding:(unint64_t)encoding dialectCode:(id)code dialect:(int)dialect;
- (NSString)iniString;
@end

@implementation AXKonaConfiguration

- (AXKonaConfiguration)initWithDylib:(id)dylib romanizerDylib:(id)romanizerDylib encoding:(unint64_t)encoding dialectCode:(id)code dialect:(int)dialect
{
  dylibCopy = dylib;
  romanizerDylibCopy = romanizerDylib;
  codeCopy = code;
  v19.receiver = self;
  v19.super_class = AXKonaConfiguration;
  v16 = [(AXKonaConfiguration *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_dylib, dylib);
    objc_storeStrong(&v17->_dialectCode, code);
    v17->_eciDialect = dialect;
    objc_storeStrong(&v17->_romanizerDylib, romanizerDylib);
    v17->_encoding = encoding;
  }

  return v17;
}

- (NSString)iniString
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundlePath = [v3 bundlePath];

  romanizerDylib = [(AXKonaConfiguration *)self romanizerDylib];

  v6 = MEMORY[0x277CCACA8];
  [(AXKonaConfiguration *)self dialectCode];
  if (romanizerDylib)
    v7 = {;
    dylib = [(AXKonaConfiguration *)self dylib];
    romanizerDylib2 = [(AXKonaConfiguration *)self romanizerDylib];
    v10 = [v6 stringWithFormat:@"[%@]\nPath=%@%@/%@.dylib\nPath_Rom=%@%@/%@.dylib\nVersion=5.0\nVoice1=0 50 65 30 0 0 50 92\nPhoneme0=0 0 0 0 0 0 0 0 0 0 0 0 0 0 0\n\n", v7, bundlePath, @"/Frameworks", dylib, bundlePath, @"/Frameworks", romanizerDylib2];
  }

  else
    v7 = {;
    dylib = [(AXKonaConfiguration *)self dylib];
    v10 = [v6 stringWithFormat:@"[%@]\nPath=%@%@/%@.dylib\nVersion=5.0\nVoice1=0 50 65 30 0 0 50 92\nPhoneme0=0 0 0 0 0 0 0 0 0 0 0 0 0 0 0\n\n", v7, bundlePath, @"/Frameworks", dylib];
  }

  return v10;
}

@end
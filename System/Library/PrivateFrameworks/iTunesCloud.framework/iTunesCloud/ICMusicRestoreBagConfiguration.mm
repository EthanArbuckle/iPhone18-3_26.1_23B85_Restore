@interface ICMusicRestoreBagConfiguration
- (ICMusicRestoreBagConfiguration)initWithServerConfiguration:(id)configuration;
@end

@implementation ICMusicRestoreBagConfiguration

- (ICMusicRestoreBagConfiguration)initWithServerConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v16.receiver = self;
  v16.super_class = ICMusicRestoreBagConfiguration;
  v5 = [(ICMusicRestoreBagConfiguration *)&v16 init];
  if (v5)
  {
    v6 = [configurationCopy ic_arrayValueForKey:@"allowed-kinds"];
    allowedKinds = v5->_allowedKinds;
    v5->_allowedKinds = v6;

    v8 = [configurationCopy ic_arrayValueForKey:@"allowed-match-status"];
    allowedMatchStatus = v5->_allowedMatchStatus;
    v5->_allowedMatchStatus = v8;

    if (!v5->_allowedMatchStatus)
    {
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:{&unk_1F2C92068, 0}];
      v11 = v5->_allowedMatchStatus;
      v5->_allowedMatchStatus = v10;
    }

    v5->_shouldGZip = [configurationCopy ic_BOOLValueForKey:@"gzip"];
    v12 = [configurationCopy ic_stringValueForKey:@"url"];
    if (v12)
    {
      v13 = [MEMORY[0x1E695DFF8] URLWithString:v12];
      restoreURL = v5->_restoreURL;
      v5->_restoreURL = v13;
    }
  }

  return v5;
}

@end
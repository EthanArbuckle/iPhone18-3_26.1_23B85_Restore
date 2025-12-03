@interface _UIDictationVoiceCommandInstrumentationMetadata
- (_UIDictationVoiceCommandInstrumentationMetadata)initWithHasSpelling:(BOOL)spelling hasTextSelection:(BOOL)selection isWfstParseable:(BOOL)parseable hasAdjacentEdit:(BOOL)edit;
@end

@implementation _UIDictationVoiceCommandInstrumentationMetadata

- (_UIDictationVoiceCommandInstrumentationMetadata)initWithHasSpelling:(BOOL)spelling hasTextSelection:(BOOL)selection isWfstParseable:(BOOL)parseable hasAdjacentEdit:(BOOL)edit
{
  v11.receiver = self;
  v11.super_class = _UIDictationVoiceCommandInstrumentationMetadata;
  result = [(_UIDictationVoiceCommandInstrumentationMetadata *)&v11 init];
  if (result)
  {
    result->_hasSpelling = spelling;
    result->_hasTextSelection = selection;
    result->_isWfstParseable = parseable;
    result->_hasAdjacentEdit = edit;
  }

  return result;
}

@end
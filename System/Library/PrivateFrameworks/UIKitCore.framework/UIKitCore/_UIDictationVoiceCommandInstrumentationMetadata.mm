@interface _UIDictationVoiceCommandInstrumentationMetadata
- (_UIDictationVoiceCommandInstrumentationMetadata)initWithHasSpelling:(BOOL)a3 hasTextSelection:(BOOL)a4 isWfstParseable:(BOOL)a5 hasAdjacentEdit:(BOOL)a6;
@end

@implementation _UIDictationVoiceCommandInstrumentationMetadata

- (_UIDictationVoiceCommandInstrumentationMetadata)initWithHasSpelling:(BOOL)a3 hasTextSelection:(BOOL)a4 isWfstParseable:(BOOL)a5 hasAdjacentEdit:(BOOL)a6
{
  v11.receiver = self;
  v11.super_class = _UIDictationVoiceCommandInstrumentationMetadata;
  result = [(_UIDictationVoiceCommandInstrumentationMetadata *)&v11 init];
  if (result)
  {
    result->_hasSpelling = a3;
    result->_hasTextSelection = a4;
    result->_isWfstParseable = a5;
    result->_hasAdjacentEdit = a6;
  }

  return result;
}

@end
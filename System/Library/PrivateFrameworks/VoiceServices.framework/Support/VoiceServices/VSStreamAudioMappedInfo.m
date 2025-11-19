@interface VSStreamAudioMappedInfo
- (_NSRange)audioBytesRange;
- (_NSRange)packetDescriptionsRange;
@end

@implementation VSStreamAudioMappedInfo

- (_NSRange)packetDescriptionsRange
{
  length = self->_packetDescriptionsRange.length;
  location = self->_packetDescriptionsRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)audioBytesRange
{
  length = self->_audioBytesRange.length;
  location = self->_audioBytesRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end
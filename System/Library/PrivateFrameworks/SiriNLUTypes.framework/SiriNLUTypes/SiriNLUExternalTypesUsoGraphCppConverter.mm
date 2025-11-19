@interface SiriNLUExternalTypesUsoGraphCppConverter
+ (id)convertCppGraph:(const void *)a3;
@end

@implementation SiriNLUExternalTypesUsoGraphCppConverter

+ (id)convertCppGraph:(const void *)a3
{
  if (a3)
  {
    siri::ontology::UsoGraphProtoWriter::toProtobuf(a3, a2);
  }

  return 0;
}

@end
@interface MusicAppSelectionPFLPlugin
- (MusicAppSelectionPFLPlugin)init;
- (id)performTask:(id)a3 outError:(id *)a4;
@end

@implementation MusicAppSelectionPFLPlugin

- (id)performTask:(id)a3 outError:(id *)a4
{
  type metadata accessor for MusicAppSelectionPFLPluginRunner();
  swift_allocObject();
  v5 = a3;
  sub_10000E94C(v5);
  v6 = sub_10000F310();

  return v6;
}

- (MusicAppSelectionPFLPlugin)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MusicAppSelectionPFLPlugin();
  return [(MusicAppSelectionPFLPlugin *)&v3 init];
}

@end
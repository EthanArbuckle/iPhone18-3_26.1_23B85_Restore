@interface AXKonaParameters
- (id)copy;
@end

@implementation AXKonaParameters

- (id)copy
{
  v3 = objc_alloc_init(AXKonaParameters);
  [(AXKonaParameters *)v3 setVocalTract:[(AXKonaParameters *)self vocalTract]];
  [(AXKonaParameters *)v3 setHeadSize:[(AXKonaParameters *)self headSize]];
  [(AXKonaParameters *)v3 setPitchBase:[(AXKonaParameters *)self pitchBase]];
  [(AXKonaParameters *)v3 setPitchFluctuation:[(AXKonaParameters *)self pitchFluctuation]];
  [(AXKonaParameters *)v3 setRoughness:[(AXKonaParameters *)self roughness]];
  [(AXKonaParameters *)v3 setBreathiness:[(AXKonaParameters *)self breathiness]];
  [(AXKonaParameters *)v3 setSpeed:[(AXKonaParameters *)self speed]];
  [(AXKonaParameters *)v3 setVolume:[(AXKonaParameters *)self volume]];
  return v3;
}

@end
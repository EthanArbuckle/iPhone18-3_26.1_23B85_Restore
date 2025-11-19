@interface SBDisplayAssertionPreferences
- (BOOL)isEqual:(id)a3;
- (SBDisplayAssertionPreferences)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation SBDisplayAssertionPreferences

- (SBDisplayAssertionPreferences)init
{
  v7.receiver = self;
  v7.super_class = SBDisplayAssertionPreferences;
  v2 = [(SBDisplayAssertionPreferences *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_wantsControlOfDisplay = 0;
    displayArrangement = v2->_displayArrangement;
    v2->_displayArrangement = 0;

    disableSystemIdleSleepReason = v3->_disableSystemIdleSleepReason;
    v3->_disableSystemIdleSleepReason = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(SBDisplayAssertionPreferences);
  [(SBDisplayAssertionPreferences *)v4 setWantsControlOfDisplay:self->_wantsControlOfDisplay];
  [(SBDisplayAssertionPreferences *)v4 setDisplayArrangement:self->_displayArrangement];
  [(SBDisplayAssertionPreferences *)v4 setDisableSystemIdleSleepReason:self->_disableSystemIdleSleepReason];
  [(SBDisplayAssertionPreferences *)v4 setPowerLogEntry:self->_powerLogEntry];
  [(SBDisplayAssertionPreferences *)v4 setCloneMirroringMode:self->_cloneMirroringMode];
  [(SBDisplayAssertionPreferences *)v4 setDisplayState:self->_displayState];
  [(SBDisplayAssertionPreferences *)v4 setDisplayContentMirroringState:self->_displayContentMirroringState];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = self->_wantsControlOfDisplay == v5->_wantsControlOfDisplay && [(SBDisplayArrangementItem *)self->_displayArrangement isEqual:v5->_displayArrangement]&& [(NSString *)self->_disableSystemIdleSleepReason isEqualToString:v5->_disableSystemIdleSleepReason]&& [(SBDisplayPowerLogEntry *)self->_powerLogEntry isEqual:v5->_powerLogEntry]&& self->_cloneMirroringMode == v5->_cloneMirroringMode && self->_displayState == v5->_displayState && self->_displayContentMirroringState == v5->_displayContentMirroringState;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendBool:self->_wantsControlOfDisplay];
  v5 = [v3 appendObject:self->_displayArrangement];
  v6 = [v3 appendString:self->_disableSystemIdleSleepReason];
  v7 = [v3 appendObject:self->_powerLogEntry];
  v8 = [v3 appendUnsignedInteger:self->_cloneMirroringMode];
  v9 = [v3 appendUnsignedInteger:self->_displayState];
  v10 = [v3 appendUnsignedInteger:self->_displayContentMirroringState];
  v11 = [v3 hash];

  return v11;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:self->_wantsControlOfDisplay withName:@"wantsControl"];
  v5 = [v3 appendObject:self->_displayArrangement withName:@"arrangement"];
  [v3 appendString:self->_disableSystemIdleSleepReason withName:@"disableSystemIdleSleepReason"];
  v6 = [v3 appendObject:self->_powerLogEntry withName:@"powerLogEntry"];
  cloneMirroringMode = self->_cloneMirroringMode;
  v8 = @"<.Invalid>";
  if (cloneMirroringMode == 1)
  {
    v8 = @".Default";
  }

  if (cloneMirroringMode == 2)
  {
    v9 = @".Disabled";
  }

  else
  {
    v9 = v8;
  }

  [v3 appendString:v9 withName:@"cloneMirroringMode"];
  if (self->_displayState)
  {
    v10 = @".Unblanked";
  }

  else
  {
    v10 = @".Blanked";
  }

  [v3 appendString:v10 withName:@"displayState"];
  if (self->_displayContentMirroringState)
  {
    v11 = @".Mirrored";
  }

  else
  {
    v11 = @".Custom";
  }

  [v3 appendString:v11 withName:@"displayContentMirroringState"];
  v12 = [v3 build];

  return v12;
}

@end
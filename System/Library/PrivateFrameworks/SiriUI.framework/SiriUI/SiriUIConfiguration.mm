@interface SiriUIConfiguration
- (SiriUIConfiguration)initWithFlamesViewFidelity:(int64_t)fidelity isSystemHostedPresentation:(BOOL)presentation allowResizingBetweenModes:(BOOL)modes siriViewMode:(int64_t)mode showsSensitiveUI:(BOOL)i;
- (id)_NSStringFromSiriViewMode:(int64_t)mode;
- (id)description;
@end

@implementation SiriUIConfiguration

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  [(SiriUIConfiguration *)self flamesViewFidelity];
  v4 = NSStringFromBOOL();
  [(SiriUIConfiguration *)self isSystemHostedPresentation];
  v5 = NSStringFromBOOL();
  v6 = [(SiriUIConfiguration *)self _NSStringFromSiriViewMode:[(SiriUIConfiguration *)self siriViewMode]];
  [(SiriUIConfiguration *)self showsSensitiveUI];
  v7 = NSStringFromBOOL();
  v8 = [v3 stringWithFormat:@"<SiriUIConfiguration flamesViewFidelity: %@, isSystemHostedPresentation: %@, siriViewMode: %@, showsSensitiveUI: %@>", v4, v5, v6, v7];

  return v8;
}

- (SiriUIConfiguration)initWithFlamesViewFidelity:(int64_t)fidelity isSystemHostedPresentation:(BOOL)presentation allowResizingBetweenModes:(BOOL)modes siriViewMode:(int64_t)mode showsSensitiveUI:(BOOL)i
{
  v13.receiver = self;
  v13.super_class = SiriUIConfiguration;
  result = [(SiriUIConfiguration *)&v13 init];
  if (result)
  {
    result->_isSystemHostedPresentation = presentation;
    result->_flamesViewFidelity = fidelity;
    result->_siriViewMode = mode;
    result->_allowResizingBetweenModes = modes;
    result->_showsSensitiveUI = i;
  }

  return result;
}

- (id)_NSStringFromSiriViewMode:(int64_t)mode
{
  if ((mode - 4) > 4)
  {
    return @"AFUISiriViewModeNone";
  }

  else
  {
    return *(&off_279C5A6F8 + mode - 4);
  }
}

@end
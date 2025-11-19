@interface _SiriPresentationOptionsMutation
- (_SiriPresentationOptionsMutation)initWithBaseModel:(id)a3;
- (id)generate;
@end

@implementation _SiriPresentationOptionsMutation

- (id)generate
{
  baseModel = self->_baseModel;
  if (!baseModel)
  {
    v6 = [SiriPresentationOptions alloc];
    mutationFlags = self->_mutationFlags;
    if ((mutationFlags & 2) != 0)
    {
      wakeScreen = self->_wakeScreen;
      if ((mutationFlags & 0x20) != 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      wakeScreen = 1;
      if ((mutationFlags & 0x20) != 0)
      {
LABEL_6:
        rotationStyle = self->_rotationStyle;
        goto LABEL_18;
      }
    }

    rotationStyle = 1;
LABEL_18:
    if ((mutationFlags & 0x40) != 0)
    {
      requestSource = self->_requestSource;
      if ((mutationFlags & 0x80) != 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      requestSource = 0;
      if ((mutationFlags & 0x80) != 0)
      {
LABEL_20:
        inputType = self->_inputType;
LABEL_23:
        v5 = [(SiriPresentationOptions *)v6 initWithWakeScreen:wakeScreen hideOtherWindowsDuringAppearance:self->_hideOtherWindowsDuringAppearance shouldAllowBiometricAutoUnlock:self->_shouldAllowBiometricAutoUnlock shouldDeactivateScenesBelow:self->_shouldDeactivateScenesBelow rotationStyle:rotationStyle requestSource:requestSource inputType:inputType launchActions:self->_launchActions];
        goto LABEL_24;
      }
    }

    inputType = 0;
    goto LABEL_23;
  }

  v4 = self->_mutationFlags;
  if ((v4 & 1) == 0)
  {
    v5 = [(SiriPresentationOptions *)baseModel copy];
LABEL_24:
    v20 = v5;
    goto LABEL_34;
  }

  if ((v4 & 2) != 0)
  {
    v10 = self->_wakeScreen;
    if ((v4 & 4) != 0)
    {
LABEL_9:
      hideOtherWindowsDuringAppearance = self->_hideOtherWindowsDuringAppearance;
      if ((v4 & 8) != 0)
      {
        goto LABEL_10;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v10 = [(SiriPresentationOptions *)baseModel wakeScreen];
    v4 = self->_mutationFlags;
    if ((v4 & 4) != 0)
    {
      goto LABEL_9;
    }
  }

  hideOtherWindowsDuringAppearance = [(SiriPresentationOptions *)self->_baseModel hideOtherWindowsDuringAppearance];
  v4 = self->_mutationFlags;
  if ((v4 & 8) != 0)
  {
LABEL_10:
    shouldAllowBiometricAutoUnlock = self->_shouldAllowBiometricAutoUnlock;
    if ((v4 & 0x10) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  shouldAllowBiometricAutoUnlock = [(SiriPresentationOptions *)self->_baseModel shouldAllowBiometricAutoUnlock];
  v4 = self->_mutationFlags;
  if ((v4 & 0x10) != 0)
  {
LABEL_11:
    shouldDeactivateScenesBelow = self->_shouldDeactivateScenesBelow;
    if ((v4 & 0x20) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  shouldDeactivateScenesBelow = [(SiriPresentationOptions *)self->_baseModel shouldDeactivateScenesBelow];
  v4 = self->_mutationFlags;
  if ((v4 & 0x20) != 0)
  {
LABEL_12:
    v14 = self->_rotationStyle;
    if ((v4 & 0x40) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  v14 = [(SiriPresentationOptions *)self->_baseModel rotationStyle];
  v4 = self->_mutationFlags;
  if ((v4 & 0x40) != 0)
  {
LABEL_13:
    v15 = self->_requestSource;
    if ((v4 & 0x80) != 0)
    {
      goto LABEL_14;
    }

LABEL_31:
    v16 = [(SiriPresentationOptions *)self->_baseModel inputType];
    if ((*&self->_mutationFlags & 0x100) != 0)
    {
      goto LABEL_15;
    }

LABEL_32:
    v17 = [(SiriPresentationOptions *)self->_baseModel launchActions];
    goto LABEL_33;
  }

LABEL_30:
  v15 = [(SiriPresentationOptions *)self->_baseModel requestSource];
  v4 = self->_mutationFlags;
  if ((v4 & 0x80) == 0)
  {
    goto LABEL_31;
  }

LABEL_14:
  v16 = self->_inputType;
  if ((v4 & 0x100) == 0)
  {
    goto LABEL_32;
  }

LABEL_15:
  v17 = self->_launchActions;
LABEL_33:
  v21 = v17;
  v20 = [[SiriPresentationOptions alloc] initWithWakeScreen:v10 hideOtherWindowsDuringAppearance:hideOtherWindowsDuringAppearance shouldAllowBiometricAutoUnlock:shouldAllowBiometricAutoUnlock shouldDeactivateScenesBelow:shouldDeactivateScenesBelow rotationStyle:v14 requestSource:v15 inputType:v16 launchActions:v17];

LABEL_34:

  return v20;
}

- (_SiriPresentationOptionsMutation)initWithBaseModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _SiriPresentationOptionsMutation;
  v6 = [(_SiriPresentationOptionsMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseModel, a3);
  }

  return v7;
}

@end
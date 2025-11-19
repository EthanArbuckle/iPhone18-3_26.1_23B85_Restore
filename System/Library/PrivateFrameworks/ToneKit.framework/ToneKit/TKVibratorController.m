@interface TKVibratorController
- (TKVibratorController)init;
- (unint64_t)vibratorState;
- (void)_turnOffIfAppropriate;
- (void)_vibrationDidCompleteWithPlayRequestIdentifier:(id)a3;
- (void)dealloc;
- (void)turnOff;
- (void)turnOnWithVibrationPattern:(id)a3;
@end

@implementation TKVibratorController

- (TKVibratorController)init
{
  v6.receiver = self;
  v6.super_class = TKVibratorController;
  v2 = [(TKVibratorController *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D71F48]) initWithLabel:@"TKVibratorController" appendUUIDToLabel:1];
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;
  }

  return v2;
}

- (void)dealloc
{
  accessQueue = self->_accessQueue;
  self->_accessQueue = 0;
  v4 = accessQueue;

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__TKVibratorController_dealloc__block_invoke;
  v6[3] = &unk_278316500;
  v6[4] = self;
  [(TLAccessQueue *)v4 performSynchronousBlock:v6];

  v5.receiver = self;
  v5.super_class = TKVibratorController;
  [(TKVibratorController *)&v5 dealloc];
}

void __31__TKVibratorController_dealloc__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _turnOffIfAppropriate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = 0;
}

- (unint64_t)vibratorState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__TKVibratorController_vibratorState__block_invoke;
  v5[3] = &unk_2783169C8;
  v5[4] = self;
  v5[5] = &v6;
  [(TLAccessQueue *)accessQueue performSynchronousBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __37__TKVibratorController_vibratorState__block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (*(v2 + 16) || (result = [*(v2 + 24) count]) != 0)
  {
    *(*(*(v1 + 40) + 8) + 24) = 1;
  }

  return result;
}

- (void)turnOnWithVibrationPattern:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__TKVibratorController_turnOnWithVibrationPattern___block_invoke;
  v7[3] = &unk_2783165C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(TLAccessQueue *)accessQueue performSynchronousBlock:v7];
}

void __51__TKVibratorController_turnOnWithVibrationPattern___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _turnOffIfAppropriate];
  v2 = [MEMORY[0x277CCAD78] UUID];
  objc_storeStrong((*(a1 + 32) + 16), v2);
  [*(a1 + 32) _previewVibrationSystemSoundID];
  v3 = objc_alloc(MEMORY[0x277CBEAC0]);
  v4 = *MEMORY[0x277CBA638];
  v5 = [v3 initWithObjectsAndKeys:{&unk_282E385F0, *MEMORY[0x277CBA638], *(a1 + 40), *MEMORY[0x277CBA658], 0}];
  objc_initWeak(&location, *(a1 + 32));
  objc_copyWeak(&v7, &location);
  v6 = v2;
  AudioServicesPlaySystemSoundWithOptions();

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __51__TKVibratorController_turnOnWithVibrationPattern___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _vibrationDidCompleteWithPlayRequestIdentifier:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)turnOff
{
  accessQueue = self->_accessQueue;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __31__TKVibratorController_turnOff__block_invoke;
  v3[3] = &unk_278316500;
  v3[4] = self;
  [(TLAccessQueue *)accessQueue performSynchronousBlock:v3];
}

- (void)_turnOffIfAppropriate
{
  v3 = self->_activePlayRequestIdentifier;
  if (v3)
  {
    v8 = v3;
    activePlayRequestIdentifier = self->_activePlayRequestIdentifier;
    self->_activePlayRequestIdentifier = 0;

    pendingStopRequestIdentifiers = self->_pendingStopRequestIdentifiers;
    if (!pendingStopRequestIdentifiers)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v7 = self->_pendingStopRequestIdentifiers;
      self->_pendingStopRequestIdentifiers = v6;

      pendingStopRequestIdentifiers = self->_pendingStopRequestIdentifiers;
    }

    [(NSMutableSet *)pendingStopRequestIdentifiers addObject:v8];
    [(TKVibratorController *)self _previewVibrationSystemSoundID];
    AudioServicesStopSystemSound();
    v3 = v8;
  }
}

- (void)_vibrationDidCompleteWithPlayRequestIdentifier:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__TKVibratorController__vibrationDidCompleteWithPlayRequestIdentifier___block_invoke;
  v7[3] = &unk_2783165C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(TLAccessQueue *)accessQueue performSynchronousBlock:v7];
}

void __71__TKVibratorController__vibrationDidCompleteWithPlayRequestIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) isEqual:*(a1 + 40)];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = *(v3 + 16);
    *(v3 + 16) = 0;
  }

  else
  {
    v5 = *(v3 + 24);
    v6 = *(a1 + 40);

    [v5 removeObject:v6];
  }
}

@end
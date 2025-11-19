@interface PNPSyntheticPencilInteractionEventSource
- (PNPPencilInteractionEventDestination)eventDestination;
- (int64_t)_playlistPositionForPosition:(int64_t)a3;
- (void)_playEventAtPlayheadPosition:(int64_t)a3;
- (void)play;
@end

@implementation PNPSyntheticPencilInteractionEventSource

- (void)play
{
  self->_cancelled = 0;
  if (!self->_playing)
  {
    self->_playing = 1;
    [(PNPSyntheticPencilInteractionEventSource *)self _playEventAtPlayheadPosition:0];
  }
}

- (void)_playEventAtPlayheadPosition:(int64_t)a3
{
  v5 = [(PNPSyntheticPencilInteractionEventSource *)self playlist];
  v6 = [v5 objectAtIndex:a3];

  v7 = [(PNPSyntheticPencilInteractionEventSource *)self eventDestination];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__PNPSyntheticPencilInteractionEventSource__playEventAtPlayheadPosition___block_invoke;
  v8[3] = &unk_279A0A150;
  v8[4] = self;
  v8[5] = a3;
  [v6 serviceDestination:v7 fromSource:self withCompletionBlock:v8];
}

uint64_t __73__PNPSyntheticPencilInteractionEventSource__playEventAtPlayheadPosition___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (v1[9] == 1)
  {
    v1[8] = 0;
    *(*(result + 32) + 9) = 0;
  }

  else
  {
    v2 = [*(result + 32) _playlistPositionForPosition:*(result + 40) + 1];

    return [v1 _playEventAtPlayheadPosition:v2];
  }

  return result;
}

- (int64_t)_playlistPositionForPosition:(int64_t)a3
{
  v4 = [(PNPSyntheticPencilInteractionEventSource *)self playlist];
  v5 = [v4 count] - 1;

  if (v5 >= a3)
  {
    return a3;
  }

  else
  {
    return 0;
  }
}

- (PNPPencilInteractionEventDestination)eventDestination
{
  WeakRetained = objc_loadWeakRetained(&self->eventDestination);

  return WeakRetained;
}

@end
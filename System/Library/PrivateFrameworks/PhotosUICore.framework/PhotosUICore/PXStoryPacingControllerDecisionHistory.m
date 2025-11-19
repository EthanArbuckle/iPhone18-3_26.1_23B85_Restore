@interface PXStoryPacingControllerDecisionHistory
@end

@implementation PXStoryPacingControllerDecisionHistory

void __69___PXStoryPacingControllerDecisionHistory_descriptionWithShortStyle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 decisionsCount];
  if (v4 >= 1)
  {
    v5 = v4 + 1;
    v6 = 240 * v4 - 112;
    v24 = a1;
    v25 = v3;
    do
    {
      v7 = [v3 decisions] + v6;
      v8 = *(v7 - 128);
      v9 = *(v7 - 104);
      v46 = *(v7 - 120);
      v47 = v9;
      v48 = *(v7 - 88);
      v44 = *(v7 - 72);
      v45 = *(v7 - 56);
      v10 = *(v7 - 48);
      v43 = *(v7 - 32);
      v11 = *v7;
      v12 = *(v7 + 8);
      *&v41[16] = *(v7 + 24);
      v42 = v10;
      *v41 = v12;
      v13 = *(a1 + 32);
      if (*(a1 + 40) == 1)
      {
        *v26 = v8;
        *&v26[8] = *(v7 - 120);
        *&v26[24] = *(v7 - 104);
        *&v26[40] = *(v7 - 88);
        v27 = *(v7 - 72);
        v28 = *(v7 - 56);
        v29 = *(v7 - 48);
        v30 = *(v7 - 32);
        v32 = *(v7 - 8);
        v31 = *(v7 - 24);
        v33 = v11;
        v35 = *(v7 + 24);
        v34 = *(v7 + 8);
        v36 = *(v7 + 40);
        v40 = *(v7 + 104);
        v39 = *(v7 + 88);
        v38 = *(v7 + 72);
        v37 = *(v7 + 56);
        v14 = PXStoryPacingDecisionDescription(v26);
        [v13 appendFormat:@"%@\n", v14];
      }

      else
      {
        v14 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
        v15 = @"Unspecified";
        if (v11 <= 4)
        {
          v15 = off_1E772DC08[v11];
        }

        v16 = v15;
        *v26 = *&v41[8];
        *&v26[16] = *&v41[24];
        v17 = PXStoryTimeDescription(v26);
        *v26 = v44;
        *&v26[16] = v45;
        v18 = PXStoryTimeDescription(v26);
        *v26 = v42;
        *&v26[16] = v43;
        v19 = PXStoryTimeDescription(v26);
        *v26 = v46;
        *&v26[16] = v47;
        *&v26[32] = v48;
        v20 = PXStoryTimeRangeDescription(v26);
        [v13 appendFormat:@"Segment: %@, Cue Type: %@, Cue Time: %@, Original Duration: %@, Adjusted Duration: %@, Allowed Range: %@\n", v14, v16, v17, v18, v19, v20];

        a1 = v24;
        v3 = v25;
      }

      --v5;
      v6 -= 240;
    }

    while (v5 > 1);
  }

  v21 = *(a1 + 32);
  v22 = [v3 resetReason];
  if (v3)
  {
    [v3 targetRemainingDuration];
  }

  else
  {
    memset(v26, 0, 24);
  }

  v23 = PXStoryTimeDescription(v26);
  [v21 appendFormat:@"  Reset: %@ (%@ Remaining)\n", v22, v23];
}

__n128 __72___PXStoryPacingControllerDecisionHistory_firstPacingDecisionAfterTime___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 >= 2)
  {
    v22 = v3;
    v23 = v4;
    v6 = a2 + 1;
    v7 = a3 + 240 * a2 - 240;
    do
    {
      time1 = *(v7 + 144);
      v20 = *(a1 + 40);
      if (CMTimeCompare(&time1, &v20) < 1)
      {
        break;
      }

      v9 = *(*(a1 + 32) + 8);
      v10 = *(v7 + 96);
      v12 = *(v7 + 48);
      v11 = *(v7 + 64);
      *(v9 + 112) = *(v7 + 80);
      *(v9 + 128) = v10;
      *(v9 + 80) = v12;
      *(v9 + 96) = v11;
      v13 = *(v7 + 160);
      v15 = *(v7 + 112);
      v14 = *(v7 + 128);
      *(v9 + 176) = *(v7 + 144);
      *(v9 + 192) = v13;
      *(v9 + 144) = v15;
      *(v9 + 160) = v14;
      v16 = *(v7 + 224);
      v18 = *(v7 + 176);
      v17 = *(v7 + 192);
      *(v9 + 240) = *(v7 + 208);
      *(v9 + 256) = v16;
      *(v9 + 208) = v18;
      *(v9 + 224) = v17;
      result = *v7;
      v19 = *(v7 + 32);
      *(v9 + 48) = *(v7 + 16);
      *(v9 + 64) = v19;
      *(v9 + 32) = result;
      --v6;
      v7 -= 240;
    }

    while (v6 > 2);
  }

  return result;
}

@end
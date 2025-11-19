@interface PLVideoTranscoder
+ (id)generatePosterFrameForAVAsset:(id)a3 maxSize:(CGSize)a4 error:(id *)a5;
+ (id)generatePosterFrameForVideoAtURL:(id)a3 maxSize:(CGSize)a4 error:(id *)a5;
+ (void)transcodeVideo:(id)a3 outputURL:(id)a4 presetName:(id)a5 outputFileType:(id)a6 metadata:(id)a7 completionHandler:(id)a8;
+ (void)transcodeVideoWithObjectBuilder:(id)a3 outputURL:(id)a4 startTime:(id *)a5 endTime:(id *)a6 presetName:(id)a7 outputFileType:(id)a8 metadata:(id)a9 completionHandler:(id)a10;
@end

@implementation PLVideoTranscoder

+ (id)generatePosterFrameForAVAsset:(id)a3 maxSize:(CGSize)a4 error:(id *)a5
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    [v5 duration];
  }

  return 0;
}

+ (id)generatePosterFrameForVideoAtURL:(id)a3 maxSize:(CGSize)a4 error:(id *)a5
{
  if (a3)
  {
    height = a4.height;
    width = a4.width;
    v9 = [MEMORY[0x1E6987E28] assetWithURL:?];
    v10 = [a1 generatePosterFrameForAVAsset:v9 maxSize:a5 error:{width, height}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (void)transcodeVideoWithObjectBuilder:(id)a3 outputURL:(id)a4 startTime:(id *)a5 endTime:(id *)a6 presetName:(id)a7 outputFileType:(id)a8 metadata:(id)a9 completionHandler:(id)a10
{
  v15 = a3;
  v31 = a4;
  v16 = a7;
  v30 = a8;
  v29 = a9;
  v17 = a10;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__112501;
  v50 = __Block_byref_object_dispose__112502;
  v51 = 0;
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __134__PLVideoTranscoder_transcodeVideoWithObjectBuilder_outputURL_startTime_endTime_presetName_outputFileType_metadata_completionHandler___block_invoke;
  v45[3] = &unk_1E75778F0;
  v45[4] = &v46;
  [v15 requestExportSessionWithExportPreset:v16 resultHandler:v45];
  v18 = v47[5];
  if (v18)
  {
    if (v17)
    {
      v19 = [v17 copy];

      v18 = v47[5];
    }

    else
    {
      v19 = 0;
    }

    v25 = [v18 presetName];
    v26 = [v47[5] asset];
    v27 = MEMORY[0x1E6987E60];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __134__PLVideoTranscoder_transcodeVideoWithObjectBuilder_outputURL_startTime_endTime_presetName_outputFileType_metadata_completionHandler___block_invoke_2;
    v32[3] = &unk_1E7577940;
    v40 = &v46;
    v33 = v30;
    v34 = v31;
    v35 = v29;
    v36 = v16;
    v41 = *&a6->var0;
    var3 = a6->var3;
    v43 = *&a5->var0;
    v44 = a5->var3;
    v17 = v19;
    v39 = v17;
    v24 = v25;
    v37 = v24;
    v28 = v26;
    v38 = v28;
    [v27 determineCompatibilityOfExportPreset:v24 withAsset:v28 outputFileType:v33 completionHandler:v32];
  }

  else
  {
    v20 = MEMORY[0x1E696ABC0];
    v21 = MEMORY[0x1E695DF20];
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@" export session could not be created"];
    v23 = [v21 dictionaryWithObject:v22 forKey:*MEMORY[0x1E696A578]];
    v24 = [v20 errorWithDomain:@"PLVideoTranscoderErrorDomain" code:0 userInfo:v23];

    if (v17)
    {
      (*(v17 + 2))(v17, 0, v24);
    }
  }

  _Block_object_dispose(&v46, 8);
}

void __134__PLVideoTranscoder_transcodeVideoWithObjectBuilder_outputURL_startTime_endTime_presetName_outputFileType_metadata_completionHandler___block_invoke_2(uint64_t a1, int a2)
{
  v29[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = [*(*(*(a1 + 88) + 8) + 40) supportedFileTypes];
    if ([v3 containsObject:*(a1 + 32)])
    {
      [*(*(*(a1 + 88) + 8) + 40) setOutputFileType:*(a1 + 32)];
      [*(*(*(a1 + 88) + 8) + 40) setOutputURL:*(a1 + 40)];
      [*(*(*(a1 + 88) + 8) + 40) setShouldOptimizeForNetworkUse:1];
      if (*(a1 + 48))
      {
        [*(*(*(a1 + 88) + 8) + 40) setMetadata:?];
      }

      if (([*(a1 + 56) isEqualToString:*MEMORY[0x1E6987340]] & 1) != 0 || objc_msgSend(*(a1 + 56), "isEqualToString:", *MEMORY[0x1E6987348]))
      {
        v4 = *(*(*(a1 + 88) + 8) + 40);
        v5 = [MEMORY[0x1E6987FE8] metadataItemFilterForSharing];
        [v4 setMetadataItemFilter:v5];
      }

      start = *(a1 + 96);
      *&time1.start.value = *(a1 + 96);
      time1.start.epoch = *(a1 + 112);
      *&time2.start.value = *MEMORY[0x1E6960CC0];
      time2.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
      if (!CMTimeCompare(&time1.start, &time2.start))
      {
        v6 = [*(*(*(a1 + 88) + 8) + 40) asset];
        v7 = v6;
        if (v6)
        {
          [v6 duration];
        }

        else
        {
          memset(&time1, 0, 24);
        }

        start = time1.start;
      }

      memset(&time1, 0, sizeof(time1));
      *&time2.start.value = *(a1 + 120);
      time2.start.epoch = *(a1 + 136);
      end = start;
      CMTimeRangeFromTimeToTime(&time1, &time2.start, &end);
      v16 = *(*(*(a1 + 88) + 8) + 40);
      time2 = time1;
      [v16 setTimeRange:&time2];
      v17 = *(a1 + 80);
      v18 = *(a1 + 88);
      v19 = *(*(v18 + 8) + 40);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __134__PLVideoTranscoder_transcodeVideoWithObjectBuilder_outputURL_startTime_endTime_presetName_outputFileType_metadata_completionHandler___block_invoke_3;
      v20[3] = &unk_1E7577918;
      v23 = v18;
      v22 = v17;
      v21 = *(a1 + 40);
      [v19 exportAsynchronouslyWithCompletionHandler:v20];

      v10 = 0;
      goto LABEL_18;
    }

    v11 = MEMORY[0x1E696ABC0];
    v12 = MEMORY[0x1E695DF20];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@" outputFileType %@ not in supported file types %@", *(a1 + 32), v3];
    v14 = [v12 dictionaryWithObject:v13 forKey:*MEMORY[0x1E696A578]];
    v10 = [v11 errorWithDomain:@"PLVideoTranscoderErrorDomain" code:0 userInfo:v14];
  }

  else
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@" presentName %@ is not compatible with asset %@ and outputFileType %@", *(a1 + 64), *(a1 + 72), *(a1 + 32)];
    v8 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A578];
    v29[0] = v3;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v10 = [v8 errorWithDomain:@"PLVideoTranscoderErrorDomain" code:0 userInfo:v9];
  }

  v15 = *(a1 + 80);
  if (v15)
  {
    (*(v15 + 16))(v15, 0, v10);
  }

LABEL_18:
}

uint64_t __134__PLVideoTranscoder_transcodeVideoWithObjectBuilder_outputURL_startTime_endTime_presetName_outputFileType_metadata_completionHandler___block_invoke_3(void *a1)
{
  v2 = [*(*(a1[6] + 8) + 40) status];
  if (v2 == 5)
  {
    v10 = MEMORY[0x1E696ABC0];
    v11 = MEMORY[0x1E695DF20];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error: Video Transcode Cancelled"];
    v7 = [v11 dictionaryWithObject:v6 forKey:*MEMORY[0x1E696A578]];
    [v10 errorWithDomain:@"PLVideoTranscoderErrorDomain" code:1 userInfo:v7];
    objc_claimAutoreleasedReturnValue();
  }

  else
  {
    if (v2 != 4)
    {
      goto LABEL_6;
    }

    v3 = MEMORY[0x1E696ABC0];
    v4 = MEMORY[0x1E695DF20];
    v5 = MEMORY[0x1E696AEC0];
    v6 = [*(*(a1[6] + 8) + 40) error];
    v7 = [v6 localizedDescription];
    v8 = [v5 stringWithFormat:@"Error: Video Transcode failed : %@", v7];
    v9 = [v4 dictionaryWithObject:v8 forKey:*MEMORY[0x1E696A578]];
    [v3 errorWithDomain:@"PLVideoTranscoderErrorDomain" code:0 userInfo:v9];
    objc_claimAutoreleasedReturnValue();
  }

LABEL_6:
  v12 = a1[5];
  if (v12)
  {
    v12 = (*(v12 + 16))(v12, a1[4]);
  }

  return MEMORY[0x1EEE66BE0](v12);
}

+ (void)transcodeVideo:(id)a3 outputURL:(id)a4 presetName:(id)a5 outputFileType:(id)a6 metadata:(id)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = [objc_alloc(MEMORY[0x1E69C08F8]) initWithVideoAsset:v14 videoAdjustments:0];
  if (v14)
  {
    [v14 duration];
  }

  else
  {
    memset(v23, 0, sizeof(v23));
  }

  v21 = *MEMORY[0x1E6960CC0];
  v22 = *(MEMORY[0x1E6960CC0] + 16);
  [a1 transcodeVideoWithObjectBuilder:v20 outputURL:v15 startTime:&v21 endTime:v23 presetName:v16 outputFileType:v17 metadata:v18 completionHandler:v19];
}

@end
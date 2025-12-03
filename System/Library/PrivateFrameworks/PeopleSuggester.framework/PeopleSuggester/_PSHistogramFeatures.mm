@interface _PSHistogramFeatures
+ (id)computeFactorNameForFeature:(id)feature;
+ (id)fetchBucketNamesFromPredictionContextForFeatureName:(int)name predictionContext:(id)context;
+ (int)bucketCounttimeIntervalForFeatureName:(int)name;
+ (int)virtualFeatureToDurableFeatureSourceMapping:(int)mapping;
@end

@implementation _PSHistogramFeatures

+ (id)fetchBucketNamesFromPredictionContextForFeatureName:(int)name predictionContext:(id)context
{
  v100 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v6 = objc_opt_new();
  switch(name)
  {
    case 524:
    case 525:
    case 526:
    case 527:
    case 528:
    case 529:
    case 530:
    case 531:
    case 532:
    case 533:
    case 644:
      suggestionDate = [contextCopy suggestionDate];

      if (suggestionDate)
      {
        currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
        suggestionDate2 = [contextCopy suggestionDate];
        suggestionDate4 = [currentCalendar components:96 fromDate:suggestionDate2];

        hour = [suggestionDate4 hour];
        goto LABEL_33;
      }

      goto LABEL_81;
    case 534:
    case 535:
    case 536:
    case 537:
    case 538:
    case 539:
    case 540:
    case 541:
    case 542:
    case 543:
    case 645:
      suggestionDate3 = [contextCopy suggestionDate];

      if (suggestionDate3)
      {
        currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
        v59 = MEMORY[0x1E696AD98];
        suggestionDate4 = [contextCopy suggestionDate];
        v31 = [v59 numberWithBool:{objc_msgSend(currentCalendar, "isDateInWeekend:", suggestionDate4)}];
        goto LABEL_79;
      }

      goto LABEL_81;
    case 544:
    case 545:
    case 546:
    case 547:
    case 548:
    case 549:
    case 550:
    case 551:
    case 552:
    case 553:
    case 646:
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      currentCalendar = [contextCopy locationUUIDs];
      v53 = [currentCalendar countByEnumeratingWithState:&v65 objects:v93 count:16];
      if (v53)
      {
        v54 = v53;
        v55 = *v66;
        do
        {
          for (i = 0; i != v54; ++i)
          {
            if (*v66 != v55)
            {
              objc_enumerationMutation(currentCalendar);
            }

            if (*(*(&v65 + 1) + 8 * i))
            {
              [v6 addObject:?];
            }
          }

          v54 = [currentCalendar countByEnumeratingWithState:&v65 objects:v93 count:16];
        }

        while (v54);
      }

      break;
    case 554:
    case 555:
    case 556:
    case 557:
    case 558:
    case 559:
    case 560:
    case 561:
    case 562:
    case 563:
    case 647:
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      currentCalendar = [contextCopy attachments];
      v43 = [currentCalendar countByEnumeratingWithState:&v89 objects:v99 count:16];
      if (v43)
      {
        v44 = v43;
        v45 = *v90;
        do
        {
          for (j = 0; j != v44; ++j)
          {
            if (*v90 != v45)
            {
              objc_enumerationMutation(currentCalendar);
            }

            v47 = *(*(&v89 + 1) + 8 * j);
            v85 = 0u;
            v86 = 0u;
            v87 = 0u;
            v88 = 0u;
            peopleInPhoto = [v47 peopleInPhoto];
            v49 = [peopleInPhoto countByEnumeratingWithState:&v85 objects:v98 count:16];
            if (v49)
            {
              v50 = v49;
              v51 = *v86;
              do
              {
                for (k = 0; k != v50; ++k)
                {
                  if (*v86 != v51)
                  {
                    objc_enumerationMutation(peopleInPhoto);
                  }

                  if (*(*(&v85 + 1) + 8 * k))
                  {
                    [v6 addObject:?];
                  }
                }

                v50 = [peopleInPhoto countByEnumeratingWithState:&v85 objects:v98 count:16];
              }

              while (v50);
            }
          }

          v44 = [currentCalendar countByEnumeratingWithState:&v89 objects:v99 count:16];
        }

        while (v44);
      }

      break;
    case 564:
    case 565:
    case 566:
    case 567:
    case 568:
    case 569:
    case 570:
    case 571:
    case 572:
    case 573:
    case 648:
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      currentCalendar = [contextCopy attachments];
      v32 = [currentCalendar countByEnumeratingWithState:&v69 objects:v94 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v70;
        do
        {
          for (m = 0; m != v33; ++m)
          {
            if (*v70 != v34)
            {
              objc_enumerationMutation(currentCalendar);
            }

            v36 = *(*(&v69 + 1) + 8 * m);
            contentURL = [v36 contentURL];

            if (contentURL)
            {
              contentURL2 = [v36 contentURL];
              baseURL = [contentURL2 baseURL];
              absoluteString = [baseURL absoluteString];

              contentURL3 = [v36 contentURL];
              absoluteString2 = [contentURL3 absoluteString];

              if (absoluteString)
              {
                [v6 addObject:absoluteString];
              }

              if (absoluteString2)
              {
                [v6 addObject:absoluteString2];
              }
            }
          }

          v33 = [currentCalendar countByEnumeratingWithState:&v69 objects:v94 count:16];
        }

        while (v33);
      }

      break;
    case 574:
    case 575:
    case 576:
    case 577:
    case 578:
    case 579:
    case 580:
    case 581:
    case 582:
    case 583:
    case 649:
      bundleID = [contextCopy bundleID];

      if (!bundleID)
      {
        goto LABEL_81;
      }

      currentCalendar = [contextCopy bundleID];
      [v6 addObject:currentCalendar];
      break;
    case 604:
    case 605:
    case 606:
    case 607:
    case 608:
    case 609:
    case 610:
    case 611:
    case 612:
    case 613:
    case 652:
      suggestionDate5 = [contextCopy suggestionDate];

      if (!suggestionDate5)
      {
        goto LABEL_81;
      }

      currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
      suggestionDate6 = [contextCopy suggestionDate];
      suggestionDate4 = [currentCalendar components:512 fromDate:suggestionDate6];

      hour = [suggestionDate4 weekday];
LABEL_33:
      v31 = [MEMORY[0x1E696AD98] numberWithInteger:hour];
LABEL_79:
      v60 = v31;
      stringValue = [v31 stringValue];
      [v6 addObject:stringValue];

      break;
    case 614:
    case 615:
    case 616:
    case 617:
    case 618:
    case 619:
    case 620:
    case 621:
    case 622:
    case 623:
    case 653:
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      currentCalendar = [contextCopy attachments];
      v19 = [currentCalendar countByEnumeratingWithState:&v81 objects:v97 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v82;
        do
        {
          for (n = 0; n != v20; ++n)
          {
            if (*v82 != v21)
            {
              objc_enumerationMutation(currentCalendar);
            }

            v23 = *(*(&v81 + 1) + 8 * n);
            v77 = 0u;
            v78 = 0u;
            v79 = 0u;
            v80 = 0u;
            photoSceneDescriptors = [v23 photoSceneDescriptors];
            v25 = [photoSceneDescriptors countByEnumeratingWithState:&v77 objects:v96 count:16];
            if (v25)
            {
              v26 = v25;
              v27 = *v78;
              do
              {
                for (ii = 0; ii != v26; ++ii)
                {
                  if (*v78 != v27)
                  {
                    objc_enumerationMutation(photoSceneDescriptors);
                  }

                  if (*(*(&v77 + 1) + 8 * ii))
                  {
                    [v6 addObject:?];
                  }
                }

                v26 = [photoSceneDescriptors countByEnumeratingWithState:&v77 objects:v96 count:16];
              }

              while (v26);
            }
          }

          v20 = [currentCalendar countByEnumeratingWithState:&v81 objects:v97 count:16];
        }

        while (v20);
      }

      break;
    case 634:
    case 635:
    case 636:
    case 637:
    case 638:
    case 639:
    case 640:
    case 641:
    case 642:
    case 643:
    case 655:
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      currentCalendar = [contextCopy attachments];
      v12 = [currentCalendar countByEnumeratingWithState:&v73 objects:v95 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v74;
        do
        {
          for (jj = 0; jj != v13; ++jj)
          {
            if (*v74 != v14)
            {
              objc_enumerationMutation(currentCalendar);
            }

            v16 = *(*(&v73 + 1) + 8 * jj);
            v17 = [v16 UTI];

            if (v17)
            {
              v18 = [v16 UTI];
              [v6 addObject:v18];
            }
          }

          v13 = [currentCalendar countByEnumeratingWithState:&v73 objects:v95 count:16];
        }

        while (v13);
      }

      break;
    default:
      goto LABEL_81;
  }

LABEL_81:
  allObjects = [v6 allObjects];

  v63 = *MEMORY[0x1E69E9840];

  return allObjects;
}

+ (int)bucketCounttimeIntervalForFeatureName:(int)name
{
  if ((name - 524) > 0x77)
  {
    return 0;
  }

  else
  {
    return dword_1B5FCAA40[name - 524];
  }
}

+ (int)virtualFeatureToDurableFeatureSourceMapping:(int)mapping
{
  if ((mapping - 524) > 0x83)
  {
    return 0;
  }

  else
  {
    return dword_1B5FCAC20[mapping - 524];
  }
}

+ (id)computeFactorNameForFeature:(id)feature
{
  featureCopy = feature;
  v4 = [featureCopy componentsSeparatedByString:@"SortedDescending"];
  if ([v4 count] == 2)
  {
    v5 = [featureCopy componentsSeparatedByString:@"SortedDescending"];
    v6 = [v5 objectAtIndexedSubscript:1];

    v7 = [v6 componentsSeparatedByString:@"ShareEventList"];
    v8 = [v7 objectAtIndexedSubscript:0];
  }

  else
  {
    v8 = @"Unknown";
  }

  v9 = [(__CFString *)v8 componentsSeparatedByString:@"Photo"];

  if ([v9 count] == 2)
  {
    v10 = [v9 objectAtIndexedSubscript:1];

    v8 = v10;
  }

  return v8;
}

@end
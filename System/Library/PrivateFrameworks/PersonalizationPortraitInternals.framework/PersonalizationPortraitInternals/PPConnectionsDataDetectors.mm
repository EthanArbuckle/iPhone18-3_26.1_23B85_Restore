@interface PPConnectionsDataDetectors
+ (id)addressComponentValueWithLocationField:(unsigned __int8)a3 forDataDetectorsMatch:(id)a4 addressComponents:(id)a5;
@end

@implementation PPConnectionsDataDetectors

+ (id)addressComponentValueWithLocationField:(unsigned __int8)a3 forDataDetectorsMatch:(id)a4 addressComponents:(id)a5
{
  v6 = a3;
  v7 = a4;
  v8 = a5;
  v9 = v8;
  v10 = 0;
  if (v6 <= 4)
  {
    if (v6 > 2)
    {
      if (v6 == 3)
      {
        v11 = MEMORY[0x277CCA6E8];
      }

      else
      {
        v11 = MEMORY[0x277CCA6B0];
      }
    }

    else
    {
      if (v6 == 1)
      {
        v12 = v7;
LABEL_18:
        v10 = v12;
        goto LABEL_19;
      }

      if (v6 != 2)
      {
        goto LABEL_19;
      }

      v11 = MEMORY[0x277CCA6D8];
    }

LABEL_17:
    v12 = [v8 objectForKeyedSubscript:*v11];
    goto LABEL_18;
  }

  if (v6 <= 6)
  {
    if (v6 == 5)
    {
      v11 = MEMORY[0x277CCA6F0];
    }

    else
    {
      v11 = MEMORY[0x277CCA6E0];
    }

    goto LABEL_17;
  }

  if (v6 != 7)
  {
    if (v6 != 9)
    {
      goto LABEL_19;
    }

    v11 = MEMORY[0x277CCA6B8];
    goto LABEL_17;
  }

  v14 = [v8 objectForKeyedSubscript:*MEMORY[0x277CCA6B0]];
  v15 = [v9 objectForKeyedSubscript:*MEMORY[0x277CCA6E0]];
  v10 = [PPConnectionsAddressFormatter formattedCityAndStateWithCity:v14 state:v15];

LABEL_19:

  return v10;
}

@end